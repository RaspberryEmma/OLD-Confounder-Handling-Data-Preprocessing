import math as m
import numpy as np
import pandas as pd
import sys


in_filename  = sys.argv[1]
out_fileroot = sys.argv[2]

df   = pd.read_csv(in_filename)

# NB: range produces sequence [start, ..., stop-1]
# For results tables, we always split directly in half

half_index = m.floor(len(df.columns) / 2)
top_index  = len(df.columns) - 1

df_1_indices =       list( range(0,            half_index+1) )
df_2_indices = [0] + list( range(half_index+1, top_index+1) )

print(df_1_indices)
print(df_2_indices)

df_1 = df.iloc[:, df_1_indices]   
df_2 = df.iloc[:, df_2_indices]

df_1.to_csv(out_fileroot+"_1.csv", index=False)
df_2.to_csv(out_fileroot+"_2.csv", index=False)

