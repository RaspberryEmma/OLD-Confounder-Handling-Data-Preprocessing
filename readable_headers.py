import numpy as np
import pandas as pd
import sys

subheading   = sys.argv[1]
in_filename  = sys.argv[2]
out_filename = sys.argv[3]

table       = open(in_filename)
table_lines = table.readlines()
old_header         = table_lines[2]
new_header_top     = "        \multirow{2}{*}{Statistical Method} & \multicolumn{6}{c}{" + subheading + "} \\\ "
new_header_bottom  = old_header.replace("Unnamed: 0", " ")

print("\nFixing headers for ", in_filename)
print(new_header_top)
print(new_header_bottom)

table_lines.pop(2)
table_lines.insert(2, new_header_top)
table_lines.insert(3, new_header_bottom)

out_file = open(out_filename, "w")
for line in table_lines:
	out_file.write(line)
out_file.close()

