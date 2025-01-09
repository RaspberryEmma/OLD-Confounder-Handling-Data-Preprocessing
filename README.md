# Confounder-Handling-Data-Preprocessing
The data pre-processing pipeline used for formatting the results of the corresponding simulation for LaTeX.
All input csv's must be in the "data" directory, outputs tables will appear in the "out" directory.  The entire pipeline can then be run from command line with the command "bash process_tables_flexible.sh".
We differentiate the "flexible" version of the table processing script purely on the basis that it's easier to add / remove simulation-runs or individual scenarios from the script.

Credit to narimiran et al. (https://github.com/narimiran) for the Python tool "tably" which we make use of for csv -> tex conversion, available here: https://github.com/narimiran/tably
