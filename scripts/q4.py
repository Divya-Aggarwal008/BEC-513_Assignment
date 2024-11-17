import sys
import pandas as pd
q = int(sys.argv[1])
data = []
for line in sys.stdin:
    data.append(float(line.strip()))
d = pd.Series(data)
quantiles , bins = pd.qcut(d, q, labels=[f"q{i+1}" for i in range(q)], retbins=True)
for value, quantile in zip(d, quantiles):
    bin_index = int(quantile[1:]) - 1
    interval = f"({bins[bin_index]:.2f}, {bins[bin_index + 1]:.2f}]"
    print(f"{value}\t{quantile}\t{quantile} {interval}")
