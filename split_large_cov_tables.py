import numpy as np
import pandas as pd
import sys


in_filename  = sys.argv[1]
out_fileroot = sys.argv[2]

df   = pd.read_csv(in_filename)
case = int(len(df.columns) - 3)

# NB: range produces sequence [start, ..., stop-1]

if (case == 32):
	df_1 = df.iloc[:, range(0,    17+1)]   # includes method, intercept, X
	df_2 = df.iloc[:, range(17+1, 33+1+1)] # includes dummy

	df_1.to_csv(out_fileroot+"_1.csv", index=False)
	df_2.to_csv(out_fileroot+"_2.csv", index=False)

elif (case == 64):
	df_1 = df.iloc[:, range(0,    17+1)]   # includes method, intercept, X
	df_2 = df.iloc[:, range(17+1, 33+1)]
	df_3 = df.iloc[:, range(33+1, 49+1)]
	df_4 = df.iloc[:, range(49+1, 65+1+1)] # includes dummy

	df_1.to_csv(out_fileroot+"_1.csv", index=False)
	df_2.to_csv(out_fileroot+"_2.csv", index=False)
	df_3.to_csv(out_fileroot+"_3.csv", index=False)
	df_4.to_csv(out_fileroot+"_4.csv", index=False)
