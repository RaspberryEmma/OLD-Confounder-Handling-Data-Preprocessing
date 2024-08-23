
# Round every table to 4 significant figures

python rounding.py data/c4-model-coefs.csv  out/model_coefs_c4_rounded.csv
python rounding.py data/c8-model-coefs.csv  out/model_coefs_c8_rounded.csv
python rounding.py data/c16-model-coefs.csv out/model_coefs_c16_rounded.csv
python rounding.py data/c32-model-coefs.csv out/model_coefs_c32_rounded.csv
python rounding.py data/c64-model-coefs.csv out/model_coefs_c64_rounded.csv

python rounding.py data/c4-model-coefs-grouped.csv  out/model_coefs_grouped_c4_rounded.csv
python rounding.py data/c8-model-coefs-grouped.csv  out/model_coefs_grouped_c8_rounded.csv
python rounding.py data/c16-model-coefs-grouped.csv out/model_coefs_grouped_c16_rounded.csv
python rounding.py data/c32-model-coefs-grouped.csv out/model_coefs_grouped_c32_rounded.csv
python rounding.py data/c64-model-coefs-grouped.csv out/model_coefs_grouped_c64_rounded.csv

python rounding.py data/c4-results-table.csv  out/results_table_c4_rounded.csv
python rounding.py data/c8-results-table.csv  out/results_table_c8_rounded.csv
python rounding.py data/c16-results-table.csv out/results_table_c16_rounded.csv
python rounding.py data/c32-results-table.csv out/results_table_c32_rounded.csv
python rounding.py data/c64-results-table.csv out/results_table_c64_rounded.csv

python rounding.py data/c4-cov-selection.csv  out/cov_selection_c4_rounded.csv
python rounding.py data/c8-cov-selection.csv  out/cov_selection_c8_rounded.csv
python rounding.py data/c16-cov-selection.csv out/cov_selection_c16_rounded.csv
python rounding.py data/c32-cov-selection.csv out/cov_selection_c32_rounded.csv
python rounding.py data/c64-cov-selection.csv out/cov_selection_c64_rounded.csv

python rounding.py data/c4-cov-selection-grouped.csv  out/cov_selection_grouped_c4_rounded.csv
python rounding.py data/c8-cov-selection-grouped.csv  out/cov_selection_grouped_c8_rounded.csv
python rounding.py data/c16-cov-selection-grouped.csv out/cov_selection_grouped_c16_rounded.csv
python rounding.py data/c32-cov-selection-grouped.csv out/cov_selection_grouped_c32_rounded.csv
python rounding.py data/c64-cov-selection-grouped.csv out/cov_selection_grouped_c64_rounded.csv



# Split large tables by columns

python split_large_cov_tables.py out/cov_selection_c32_rounded.csv out/cov_selection_c32_rounded_split
python split_large_cov_tables.py out/cov_selection_c64_rounded.csv out/cov_selection_c64_rounded_split

python split_large_coef_tables.py out/model_coefs_c32_rounded.csv out/model_coefs_c32_rounded_split
python split_large_coef_tables.py out/model_coefs_c64_rounded.csv out/model_coefs_c64_rounded_split



# Convert final CSVs into TeX data

python tably.py out/model_coefs_c4_rounded.csv   -o out/model_coefs_c4_tex.txt   -r
python tably.py out/model_coefs_c8_rounded.csv   -o out/model_coefs_c8_tex.txt   -r
python tably.py out/model_coefs_c16_rounded.csv  -o out/model_coefs_c16_tex.txt  -r

python tably.py out/model_coefs_c32_rounded_split_1.csv  -o out/model_coefs_c32_split_1_tex.txt  -r
python tably.py out/model_coefs_c32_rounded_split_2.csv  -o out/model_coefs_c32_split_2_tex.txt  -r

python tably.py out/model_coefs_c64_rounded_split_1.csv  -o out/model_coefs_c64_split_1_tex.txt  -r
python tably.py out/model_coefs_c64_rounded_split_2.csv  -o out/model_coefs_c64_split_2_tex.txt  -r
python tably.py out/model_coefs_c64_rounded_split_3.csv  -o out/model_coefs_c64_split_3_tex.txt  -r
python tably.py out/model_coefs_c64_rounded_split_4.csv  -o out/model_coefs_c64_split_4_tex.txt  -r

python tably.py out/model_coefs_grouped_c4_rounded.csv   -o out/model_coefs_grouped_c4_tex.txt   -r
python tably.py out/model_coefs_grouped_c8_rounded.csv   -o out/model_coefs_grouped_c8_tex.txt   -r
python tably.py out/model_coefs_grouped_c16_rounded.csv  -o out/model_coefs_grouped_c16_tex.txt  -r
python tably.py out/model_coefs_grouped_c32_rounded.csv  -o out/model_coefs_grouped_c32_tex.txt  -r
python tably.py out/model_coefs_grouped_c64_rounded.csv  -o out/model_coefs_grouped_c64_tex.txt  -r

python tably.py out/results_table_c4_rounded.csv   -o out/results_table_c4_tex.txt   -r
python tably.py out/results_table_c8_rounded.csv   -o out/results_table_c8_tex.txt   -r
python tably.py out/results_table_c16_rounded.csv  -o out/results_table_c16_tex.txt  -r
python tably.py out/results_table_c32_rounded.csv  -o out/results_table_c32_tex.txt  -r
python tably.py out/results_table_c64_rounded.csv  -o out/results_table_c64_tex.txt  -r

python tably.py out/cov_selection_c4_rounded.csv   -o out/cov_selection_c4_tex.txt   -r
python tably.py out/cov_selection_c8_rounded.csv   -o out/cov_selection_c8_tex.txt   -r
python tably.py out/cov_selection_c16_rounded.csv  -o out/cov_selection_c16_tex.txt  -r

python tably.py out/cov_selection_c32_rounded_split_1.csv  -o out/cov_selection_c32_split_1_tex.txt  -r
python tably.py out/cov_selection_c32_rounded_split_2.csv  -o out/cov_selection_c32_split_2_tex.txt  -r

python tably.py out/cov_selection_c64_rounded_split_1.csv  -o out/cov_selection_c64_split_1_tex.txt  -r
python tably.py out/cov_selection_c64_rounded_split_2.csv  -o out/cov_selection_c64_split_2_tex.txt  -r
python tably.py out/cov_selection_c64_rounded_split_3.csv  -o out/cov_selection_c64_split_3_tex.txt  -r
python tably.py out/cov_selection_c64_rounded_split_4.csv  -o out/cov_selection_c64_split_4_tex.txt  -r

python tably.py out/cov_selection_grouped_c4_rounded.csv   -o out/cov_selection_grouped_c4_tex.txt   -r
python tably.py out/cov_selection_grouped_c8_rounded.csv   -o out/cov_selection_grouped_c8_tex.txt   -r
python tably.py out/cov_selection_grouped_c16_rounded.csv  -o out/cov_selection_grouped_c16_tex.txt  -r
python tably.py out/cov_selection_grouped_c32_rounded.csv  -o out/cov_selection_grouped_c32_tex.txt  -r
python tably.py out/cov_selection_grouped_c64_rounded.csv  -o out/cov_selection_grouped_c64_tex.txt  -r


