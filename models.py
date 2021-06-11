import torch.nn as nn
import torch.nn.functional as F


class CRED(nn.Module):
    def __init__(self):
        super(CRED, self).__init__()

        self.conv1 = nn.Conv1d(1, 8, 3, padding=1, stride=4)
        self.res1conv1 = nn.Conv1d(8, 8, 3, padding=1, stride=1)
        self.res1conv2 = nn.Conv1d(8, 8, 3, padding=1, stride=1)

        self.conv2 = nn.Conv1d(8, 16, 3, padding=1, stride=4)
        self.res2conv1 = nn.Conv1d(16, 16, 3, padding=1, stride=1)
        self.res2conv2 = nn.Conv1d(16, 16, 3, padding=1, stride=1)

        self.bilstm1 = nn.LSTM(375, 64, 1, batch_first=True, bidirectional=True)
        self.bilstm2 = nn.LSTM(128, 64, 1, batch_first=True, bidirectional=True)
        self.lstm = nn.LSTM(128, 128, 1, batch_first=True)

        self.dropbi = nn.Dropout(p=0.7)
        self.droplstm = nn.Dropout(p=0.8)

        self.l1 = nn.Linear(128, 128)
        self.l2 = nn.Linear(128, 1)

        self.bn1 = nn.BatchNorm1d(8)
        self.res1bn1 = nn.BatchNorm1d(8)
        self.res1bn2 = nn.BatchNorm1d(8)

        self.bn2 = nn.BatchNorm1d(16)
        self.res2bn1 = nn.BatchNorm1d(16)
        self.res2bn2 = nn.BatchNorm1d(16)

        self.bnlstm = nn.BatchNorm1d(64)

        self.sigmoid = nn.Sigmoid()

    def forward(self, x):
        x = x.view(-1, 1, 6000)

        # Primera capa CNN
        x = F.relu(self.conv1(x))
        identity = x

        # Residual block 1
        x = F.relu(self.bn1(x))
        x = F.relu(self.res1bn1(self.res1conv1(x)))
        x = F.relu(self.res1bn2(self.res1conv2(x)))
        x += identity

        # Segunda capa CNN
        x = F.relu(self.conv2(x))
        identity = x

        # Residual block 2
        x = F.relu(self.bn2(x))
        x = F.relu(self.res2bn1(self.res2conv1(x)))
        x = F.relu(self.res2bn2(self.res2conv2(x)))
        x += identity

        # Time redistribution
        # x = x.permute(0, 2, 1)

        # Bi LSTM residual block
        x, _ = self.bilstm1(x)
        # x = self.bnlstm(x)
        x = self.dropbi(x)

        x, _ = self.bilstm2(x)
        # x = self.bnlstm(x)
        x = self.dropbi(x)

        # LSTM
        x, _ = self.lstm(x)
        x = self.droplstm(x)

        # Linear
        x = self.l1(x[:, -1, :])
        x = self.l2(x)

        return self.sigmoid(x)
