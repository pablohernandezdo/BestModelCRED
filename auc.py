import numpy as np

def pr_auc(precision, recall):
    precision = precision.to_numpy()
    recall = recall.to_numpy()

    precision = np.append(precision, 1)
    recall = np.append(recall, 0)

    pr_auc = np.trapz(precision[::-1], x=recall[::-1])

    return pr_auc

def roc_auc(recall, fpr):
    recall = recall.to_numpy()
    fpr = fpr.to_numpy()

    recall = np.append(recall, 0)
    fpr = np.append(fpr, 0)

    roc_auc = np.trapz(recall[::-1], x=fpr[::-1])

    return roc_auc