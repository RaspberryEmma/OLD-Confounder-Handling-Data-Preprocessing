import numpy as np
import pandas as pd
import sys

in_filename  = sys.argv[1]
out_filename = sys.argv[2]

df = pd.read_csv(in_filename)
df = df.round(4)
print(df)
df.to_csv(out_filename, index=False)


