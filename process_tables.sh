#!/bin/bash



# Round every table to 4 significant figures

python rounding.py data/c4-model-coefs.csv   temp/model_coefs_c4_rounded.csv
python rounding.py data/c8-model-coefs.csv   temp/model_coefs_c8_rounded.csv
python rounding.py data/c16-model-coefs.csv  temp/model_coefs_c16_rounded.csv
python rounding.py data/c32-model-coefs.csv  temp/model_coefs_c32_rounded.csv
#python rounding.py data/c64-model-coefs.csv  temp/model_coefs_c64_rounded.csv
#python rounding.py data/c128-model-coefs.csv temp/model_coefs_c128_rounded.csv
#python rounding.py data/c256-model-coefs.csv temp/model_coefs_c256_rounded.csv

python rounding.py data/c4-model-coefs-grouped.csv   temp/model_coefs_grouped_c4_rounded.csv
python rounding.py data/c8-model-coefs-grouped.csv   temp/model_coefs_grouped_c8_rounded.csv
python rounding.py data/c16-model-coefs-grouped.csv  temp/model_coefs_grouped_c16_rounded.csv
python rounding.py data/c32-model-coefs-grouped.csv  temp/model_coefs_grouped_c32_rounded.csv
#python rounding.py data/c64-model-coefs-grouped.csv  temp/model_coefs_grouped_c64_rounded.csv
#python rounding.py data/c128-model-coefs-grouped.csv temp/model_coefs_grouped_c128_rounded.csv
#python rounding.py data/c256-model-coefs-grouped.csv temp/model_coefs_grouped_c256_rounded.csv

python rounding.py data/c4-results-table.csv   temp/results_table_c4_rounded.csv
python rounding.py data/c8-results-table.csv   temp/results_table_c8_rounded.csv
python rounding.py data/c16-results-table.csv  temp/results_table_c16_rounded.csv
python rounding.py data/c32-results-table.csv  temp/results_table_c32_rounded.csv
#python rounding.py data/c64-results-table.csv  temp/results_table_c64_rounded.csv
#python rounding.py data/c128-results-table.csv temp/results_table_c128_rounded.csv
#python rounding.py data/c256-results-table.csv temp/results_table_c256_rounded.csv

python rounding.py data/c4-cov-selection.csv   temp/cov_selection_c4_rounded.csv
python rounding.py data/c8-cov-selection.csv   temp/cov_selection_c8_rounded.csv
python rounding.py data/c16-cov-selection.csv  temp/cov_selection_c16_rounded.csv
python rounding.py data/c32-cov-selection.csv  temp/cov_selection_c32_rounded.csv
#python rounding.py data/c64-cov-selection.csv  temp/cov_selection_c64_rounded.csv
#python rounding.py data/c128-cov-selection.csv temp/cov_selection_c128_rounded.csv
#python rounding.py data/c256-cov-selection.csv temp/cov_selection_c256_rounded.csv

python rounding.py data/c4-cov-selection-grouped.csv   temp/cov_selection_grouped_c4_rounded.csv
python rounding.py data/c8-cov-selection-grouped.csv   temp/cov_selection_grouped_c8_rounded.csv
python rounding.py data/c16-cov-selection-grouped.csv  temp/cov_selection_grouped_c16_rounded.csv
python rounding.py data/c32-cov-selection-grouped.csv  temp/cov_selection_grouped_c32_rounded.csv
#python rounding.py data/c64-cov-selection-grouped.csv  temp/cov_selection_grouped_c64_rounded.csv
#python rounding.py data/c128-cov-selection-grouped.csv temp/cov_selection_grouped_c128_rounded.csv
#python rounding.py data/c256-cov-selection-grouped.csv temp/cov_selection_grouped_c256_rounded.csv

#python rounding.py data/c4-cov-dispersion.csv   temp/cov_dispersion_c4_rounded.csv
#python rounding.py data/c8-cov-dispersion.csv   temp/cov_dispersion_c8_rounded.csv
#python rounding.py data/c16-cov-dispersion.csv  temp/cov_dispersion_c16_rounded.csv
#python rounding.py data/c32-cov-dispersion.csv  temp/cov_dispersion_c32_rounded.csv
#python rounding.py data/c64-cov-dispersion.csv  temp/cov_dispersion_c64_rounded.csv
#python rounding.py data/c128-cov-dispersion.csv temp/cov_dispersion_c128_rounded.csv
#python rounding.py data/c256-cov-dispersion.csv temp/cov_dispersion_c256_rounded.csv

python rounding.py data/c4-cov-dispersion-grouped.csv   temp/cov_dispersion_grouped_c4_rounded.csv
python rounding.py data/c8-cov-dispersion-grouped.csv   temp/cov_dispersion_grouped_c8_rounded.csv
python rounding.py data/c16-cov-dispersion-grouped.csv  temp/cov_dispersion_grouped_c16_rounded.csv
python rounding.py data/c32-cov-dispersion-grouped.csv  temp/cov_dispersion_grouped_c32_rounded.csv
#python rounding.py data/c64-cov-dispersion-grouped.csv  temp/cov_dispersion_grouped_c64_rounded.csv
#python rounding.py data/c128-cov-dispersion-grouped.csv temp/cov_dispersion_grouped_c128_rounded.csv
#python rounding.py data/c256-cov-dispersion-grouped.csv temp/cov_dispersion_grouped_c256_rounded.csv



# Split large tables by columns

#python split_large_cov_tables.py temp/cov_selection_c32_rounded.csv temp/cov_selection_c32_rounded_split
#python split_large_cov_tables.py temp/cov_selection_c64_rounded.csv temp/cov_selection_c64_rounded_split

#python split_large_coef_tables.py temp/model_coefs_c32_rounded.csv temp/model_coefs_c32_rounded_split
#python split_large_coef_tables.py temp/model_coefs_c64_rounded.csv temp/model_coefs_c64_rounded_split

python split_results_tables.py temp/results_table_c4_rounded.csv  temp/results_table_c4_rounded_split
python split_results_tables.py temp/results_table_c8_rounded.csv  temp/results_table_c8_rounded_split
python split_results_tables.py temp/results_table_c16_rounded.csv temp/results_table_c16_rounded_split
python split_results_tables.py temp/results_table_c32_rounded.csv temp/results_table_c32_rounded_split



# Convert final CSVs into TeX data

#python tably.py temp/model_coefs_c4_rounded.csv   -o temp/model_coefs_c4_tex.txt   -r
#python tably.py temp/model_coefs_c8_rounded.csv   -o temp/model_coefs_c8_tex.txt   -r
#python tably.py temp/model_coefs_c16_rounded.csv  -o temp/model_coefs_c16_tex.txt  -r

#python tably.py temp/model_coefs_c32_rounded_split_1.csv  -o temp/model_coefs_c32_split_1_tex.txt  -r
#python tably.py temp/model_coefs_c32_rounded_split_2.csv  -o temp/model_coefs_c32_split_2_tex.txt  -r

#python tably.py temp/model_coefs_c64_rounded_split_1.csv  -o temp/model_coefs_c64_split_1_tex.txt  -r
#python tably.py temp/model_coefs_c64_rounded_split_2.csv  -o temp/model_coefs_c64_split_2_tex.txt  -r
#python tably.py temp/model_coefs_c64_rounded_split_3.csv  -o temp/model_coefs_c64_split_3_tex.txt  -r
#python tably.py temp/model_coefs_c64_rounded_split_4.csv  -o temp/model_coefs_c64_split_4_tex.txt  -r

python tably.py temp/model_coefs_grouped_c4_rounded.csv    -o temp/model_coefs_grouped_c4_tex.txt    -r
python tably.py temp/model_coefs_grouped_c8_rounded.csv    -o temp/model_coefs_grouped_c8_tex.txt    -r
python tably.py temp/model_coefs_grouped_c16_rounded.csv   -o temp/model_coefs_grouped_c16_tex.txt   -r
python tably.py temp/model_coefs_grouped_c32_rounded.csv   -o temp/model_coefs_grouped_c32_tex.txt   -r
#python tably.py temp/model_coefs_grouped_c64_rounded.csv   -o temp/model_coefs_grouped_c64_tex.txt   -r
#python tably.py temp/model_coefs_grouped_c128_rounded.csv  -o temp/model_coefs_grouped_c128_tex.txt  -r
#python tably.py temp/model_coefs_grouped_c256_rounded.csv  -o temp/model_coefs_grouped_c256_tex.txt  -r

python tably.py temp/results_table_c4_rounded_split_1.csv    -o temp/results_table_c4_split_1_tex.txt    -r
python tably.py temp/results_table_c4_rounded_split_2.csv    -o temp/results_table_c4_split_2_tex.txt    -r
python tably.py temp/results_table_c8_rounded_split_1.csv    -o temp/results_table_c8_split_1_tex.txt    -r
python tably.py temp/results_table_c8_rounded_split_2.csv    -o temp/results_table_c8_split_2_tex.txt    -r
python tably.py temp/results_table_c16_rounded_split_1.csv   -o temp/results_table_c16_split_1_tex.txt   -r
python tably.py temp/results_table_c16_rounded_split_2.csv   -o temp/results_table_c16_split_2_tex.txt   -r
python tably.py temp/results_table_c32_rounded_split_1.csv   -o temp/results_table_c32_split_1_tex.txt   -r
python tably.py temp/results_table_c32_rounded_split_2.csv   -o temp/results_table_c32_split_2_tex.txt   -r

#python tably.py temp/cov_selection_c4_rounded.csv   -o temp/cov_selection_c4_tex.txt   -r
#python tably.py temp/cov_selection_c8_rounded.csv   -o temp/cov_selection_c8_tex.txt   -r
#python tably.py temp/cov_selection_c16_rounded.csv  -o temp/cov_selection_c16_tex.txt  -r

#python tably.py temp/cov_selection_c32_rounded_split_1.csv  -o temp/cov_selection_c32_split_1_tex.txt  -r
#python tably.py temp/cov_selection_c32_rounded_split_2.csv  -o temp/cov_selection_c32_split_2_tex.txt  -r

#python tably.py temp/cov_selection_c64_rounded_split_1.csv  -o temp/cov_selection_c64_split_1_tex.txt  -r
#python tably.py temp/cov_selection_c64_rounded_split_2.csv  -o temp/cov_selection_c64_split_2_tex.txt  -r
#python tably.py temp/cov_selection_c64_rounded_split_3.csv  -o temp/cov_selection_c64_split_3_tex.txt  -r
#python tably.py temp/cov_selection_c64_rounded_split_4.csv  -o temp/cov_selection_c64_split_4_tex.txt  -r

python tably.py temp/cov_selection_grouped_c4_rounded.csv    -o temp/cov_selection_grouped_c4_tex.txt    -r
python tably.py temp/cov_selection_grouped_c8_rounded.csv    -o temp/cov_selection_grouped_c8_tex.txt    -r
python tably.py temp/cov_selection_grouped_c16_rounded.csv   -o temp/cov_selection_grouped_c16_tex.txt   -r
python tably.py temp/cov_selection_grouped_c32_rounded.csv   -o temp/cov_selection_grouped_c32_tex.txt   -r
#python tably.py temp/cov_selection_grouped_c64_rounded.csv   -o temp/cov_selection_grouped_c64_tex.txt   -r
#python tably.py temp/cov_selection_grouped_c128_rounded.csv  -o temp/cov_selection_grouped_c128_tex.txt  -r
#python tably.py temp/cov_selection_grouped_c256_rounded.csv  -o temp/cov_selection_grouped_c256_tex.txt  -r

python tably.py temp/cov_dispersion_grouped_c4_rounded.csv    -o temp/cov_dispersion_grouped_c4_tex.txt    -r
python tably.py temp/cov_dispersion_grouped_c8_rounded.csv    -o temp/cov_dispersion_grouped_c8_tex.txt    -r
python tably.py temp/cov_dispersion_grouped_c16_rounded.csv   -o temp/cov_dispersion_grouped_c16_tex.txt   -r
python tably.py temp/cov_dispersion_grouped_c32_rounded.csv   -o temp/cov_dispersion_grouped_c32_tex.txt   -r
#python tably.py temp/cov_dispersion_grouped_c64_rounded.csv   -o temp/cov_dispersion_grouped_c64_tex.txt   -r
#python tably.py temp/cov_dispersion_grouped_c128_rounded.csv  -o temp/cov_dispersion_grouped_c128_tex.txt  -r
#python tably.py temp/cov_dispersion_grouped_c256_rounded.csv  -o temp/cov_dispersion_grouped_c256_tex.txt  -r



# Fix table headers for readability

python readable_headers.py "Result measured" temp/results_table_c4_split_1_tex.txt  out/results_table_c4_split_1_headers_tex.txt
python readable_headers.py "Result measured" temp/results_table_c4_split_2_tex.txt  out/results_table_c4_split_2_headers_tex.txt
python readable_headers.py "Result measured" temp/results_table_c8_split_1_tex.txt  out/results_table_c8_split_1_headers_tex.txt
python readable_headers.py "Result measured" temp/results_table_c8_split_2_tex.txt  out/results_table_c8_split_2_headers_tex.txt
python readable_headers.py "Result measured" temp/results_table_c16_split_1_tex.txt out/results_table_c16_split_1_headers_tex.txt
python readable_headers.py "Result measured" temp/results_table_c16_split_2_tex.txt out/results_table_c16_split_2_headers_tex.txt
python readable_headers.py "Result measured" temp/results_table_c32_split_1_tex.txt out/results_table_c32_split_1_headers_tex.txt
python readable_headers.py "Result measured" temp/results_table_c32_split_2_tex.txt out/results_table_c32_split_2_headers_tex.txt

python readable_headers.py "Coefficient" temp/model_coefs_grouped_c4_tex.txt  out/model_coefs_grouped_headers_c4_tex.txt
python readable_headers.py "Coefficient" temp/model_coefs_grouped_c8_tex.txt  out/model_coefs_grouped_headers_c8_tex.txt
python readable_headers.py "Coefficient" temp/model_coefs_grouped_c16_tex.txt out/model_coefs_grouped_headers_c16_tex.txt
python readable_headers.py "Coefficient" temp/model_coefs_grouped_c32_tex.txt out/model_coefs_grouped_headers_c32_tex.txt

python readable_headers.py "Proportion of repetitions selected" temp/cov_selection_grouped_c4_tex.txt   out/cov_selection_grouped_headers_c4_tex.txt
python readable_headers.py "Proportion of repetitions selected" temp/cov_selection_grouped_c8_tex.txt   out/cov_selection_grouped_headers_c8_tex.txt
python readable_headers.py "Proportion of repetitions selected" temp/cov_selection_grouped_c16_tex.txt  out/cov_selection_grouped_headers_c16_tex.txt
python readable_headers.py "Proportion of repetitions selected" temp/cov_selection_grouped_c32_tex.txt  out/cov_selection_grouped_headers_c32_tex.txt

python readable_headers.py "Dispersion between covariates within groups" temp/cov_dispersion_grouped_c4_tex.txt    out/cov_dispersion_grouped_headers_c4_tex.txt
python readable_headers.py "Dispersion between covariates within groups" temp/cov_dispersion_grouped_c8_tex.txt    out/cov_dispersion_grouped_headers_c8_tex.txt
python readable_headers.py "Dispersion between covariates within groups" temp/cov_dispersion_grouped_c16_tex.txt   out/cov_dispersion_grouped_headers_c16_tex.txt
python readable_headers.py "Dispersion between covariates within groups" temp/cov_dispersion_grouped_c32_tex.txt   out/cov_dispersion_grouped_headers_c32_tex.txt


