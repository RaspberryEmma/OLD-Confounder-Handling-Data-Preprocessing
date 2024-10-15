#!/bin/bash



# Round every table to 4 significant figures

python rounding.py data/s1-model-coefs.csv  temp/model_coefs_s1_rounded.csv
python rounding.py data/s2-model-coefs.csv  temp/model_coefs_s2_rounded.csv
python rounding.py data/s3-model-coefs.csv  temp/model_coefs_s3_rounded.csv
python rounding.py data/s4-model-coefs.csv  temp/model_coefs_s4_rounded.csv

python rounding.py data/s1-model-coefs-grouped.csv  temp/model_coefs_grouped_s1_rounded.csv
python rounding.py data/s2-model-coefs-grouped.csv  temp/model_coefs_grouped_s2_rounded.csv
python rounding.py data/s3-model-coefs-grouped.csv  temp/model_coefs_grouped_s3_rounded.csv
python rounding.py data/s4-model-coefs-grouped.csv  temp/model_coefs_grouped_s4_rounded.csv

python rounding.py data/s1-results-table.csv  temp/results_table_s1_rounded.csv
python rounding.py data/s2-results-table.csv  temp/results_table_s2_rounded.csv
python rounding.py data/s3-results-table.csv  temp/results_table_s3_rounded.csv
python rounding.py data/s4-results-table.csv  temp/results_table_s4_rounded.csv


python rounding.py data/s1-cov-selection.csv  temp/cov_selection_s1_rounded.csv
python rounding.py data/s2-cov-selection.csv  temp/cov_selection_s2_rounded.csv
python rounding.py data/s3-cov-selection.csv  temp/cov_selection_s3_rounded.csv
python rounding.py data/s4-cov-selection.csv  temp/cov_selection_s4_rounded.csv

python rounding.py data/s1-cov-selection-grouped.csv  temp/cov_selection_grouped_s1_rounded.csv
python rounding.py data/s2-cov-selection-grouped.csv  temp/cov_selection_grouped_s2_rounded.csv
python rounding.py data/s3-cov-selection-grouped.csv  temp/cov_selection_grouped_s3_rounded.csv
python rounding.py data/s4-cov-selection-grouped.csv  temp/cov_selection_grouped_s4_rounded.csv

python rounding.py data/s1-cov-dispersion-grouped.csv  temp/cov_dispersion_grouped_s1_rounded.csv
python rounding.py data/s2-cov-dispersion-grouped.csv  temp/cov_dispersion_grouped_s2_rounded.csv
python rounding.py data/s3-cov-dispersion-grouped.csv  temp/cov_dispersion_grouped_s3_rounded.csv
python rounding.py data/s4-cov-dispersion-grouped.csv  temp/cov_dispersion_grouped_s4_rounded.csv



# Split large tables by columns

python split_results_tables.py temp/results_table_s1_rounded.csv  temp/results_table_s1_rounded_split
python split_results_tables.py temp/results_table_s2_rounded.csv  temp/results_table_s2_rounded_split
python split_results_tables.py temp/results_table_s3_rounded.csv  temp/results_table_s3_rounded_split
python split_results_tables.py temp/results_table_s4_rounded.csv  temp/results_table_s4_rounded_split



# Convert final CSVs into TeX data

python tably.py temp/model_coefs_grouped_s1_rounded.csv   -o temp/model_coefs_grouped_s1_tex.txt   -r
python tably.py temp/model_coefs_grouped_s2_rounded.csv   -o temp/model_coefs_grouped_s2_tex.txt   -r
python tably.py temp/model_coefs_grouped_s3_rounded.csv   -o temp/model_coefs_grouped_s3_tex.txt   -r
python tably.py temp/model_coefs_grouped_s4_rounded.csv   -o temp/model_coefs_grouped_s4_tex.txt   -r

python tably.py temp/results_table_s1_rounded_split_1.csv   -o temp/results_table_s1_split_1_tex.txt   -r
python tably.py temp/results_table_s1_rounded_split_2.csv   -o temp/results_table_s1_split_2_tex.txt   -r
python tably.py temp/results_table_s2_rounded_split_1.csv   -o temp/results_table_s2_split_1_tex.txt   -r
python tably.py temp/results_table_s2_rounded_split_2.csv   -o temp/results_table_s2_split_2_tex.txt   -r
python tably.py temp/results_table_s3_rounded_split_1.csv   -o temp/results_table_s3_split_1_tex.txt   -r
python tably.py temp/results_table_s3_rounded_split_2.csv   -o temp/results_table_s3_split_2_tex.txt   -r
python tably.py temp/results_table_s4_rounded_split_1.csv   -o temp/results_table_s4_split_1_tex.txt   -r
python tably.py temp/results_table_s4_rounded_split_2.csv   -o temp/results_table_s4_split_2_tex.txt   -r


python tably.py temp/cov_selection_grouped_s1_rounded.csv   -o temp/cov_selection_grouped_s1_tex.txt   -r
python tably.py temp/cov_selection_grouped_s2_rounded.csv   -o temp/cov_selection_grouped_s2_tex.txt   -r
python tably.py temp/cov_selection_grouped_s3_rounded.csv   -o temp/cov_selection_grouped_s3_tex.txt   -r
python tably.py temp/cov_selection_grouped_s4_rounded.csv   -o temp/cov_selection_grouped_s4_tex.txt   -r

python tably.py temp/cov_dispersion_grouped_s1_rounded.csv   -o temp/cov_dispersion_grouped_s1_tex.txt   -r
python tably.py temp/cov_dispersion_grouped_s2_rounded.csv   -o temp/cov_dispersion_grouped_s2_tex.txt   -r
python tably.py temp/cov_dispersion_grouped_s3_rounded.csv   -o temp/cov_dispersion_grouped_s3_tex.txt   -r
python tably.py temp/cov_dispersion_grouped_s4_rounded.csv   -o temp/cov_dispersion_grouped_s4_tex.txt   -r



# Fix table headers for readability

python readable_headers.py "Result measured" temp/results_table_s1_split_1_tex.txt  out/results_table_s1_split_1_headers_tex.txt
python readable_headers.py "Result measured" temp/results_table_s1_split_2_tex.txt  out/results_table_s1_split_2_headers_tex.txt
python readable_headers.py "Result measured" temp/results_table_s2_split_1_tex.txt  out/results_table_s2_split_1_headers_tex.txt
python readable_headers.py "Result measured" temp/results_table_s2_split_2_tex.txt  out/results_table_s2_split_2_headers_tex.txt
python readable_headers.py "Result measured" temp/results_table_s3_split_1_tex.txt  out/results_table_s3_split_1_headers_tex.txt
python readable_headers.py "Result measured" temp/results_table_s3_split_2_tex.txt  out/results_table_s3_split_2_headers_tex.txt
python readable_headers.py "Result measured" temp/results_table_s4_split_1_tex.txt  out/results_table_s4_split_1_headers_tex.txt
python readable_headers.py "Result measured" temp/results_table_s4_split_2_tex.txt  out/results_table_s4_split_2_headers_tex.txt

python readable_headers.py "Coefficient" temp/model_coefs_grouped_s1_tex.txt  out/model_coefs_grouped_headers_s1_tex.txt
python readable_headers.py "Coefficient" temp/model_coefs_grouped_s2_tex.txt  out/model_coefs_grouped_headers_s2_tex.txt
python readable_headers.py "Coefficient" temp/model_coefs_grouped_s3_tex.txt  out/model_coefs_grouped_headers_s3_tex.txt
python readable_headers.py "Coefficient" temp/model_coefs_grouped_s4_tex.txt  out/model_coefs_grouped_headers_s4_tex.txt

python readable_headers.py "Proportion of repetitions selected" temp/cov_selection_grouped_s1_tex.txt  out/cov_selection_grouped_headers_s1_tex.txt
python readable_headers.py "Proportion of repetitions selected" temp/cov_selection_grouped_s2_tex.txt  out/cov_selection_grouped_headers_s2_tex.txt
python readable_headers.py "Proportion of repetitions selected" temp/cov_selection_grouped_s3_tex.txt  out/cov_selection_grouped_headers_s3_tex.txt
python readable_headers.py "Proportion of repetitions selected" temp/cov_selection_grouped_s4_tex.txt  out/cov_selection_grouped_headers_s4_tex.txt

python readable_headers.py "Dispersion between covariates within groups" temp/cov_dispersion_grouped_s1_tex.txt   out/cov_dispersion_grouped_headers_s1_tex.txt
python readable_headers.py "Dispersion between covariates within groups" temp/cov_dispersion_grouped_s2_tex.txt   out/cov_dispersion_grouped_headers_s2_tex.txt
python readable_headers.py "Dispersion between covariates within groups" temp/cov_dispersion_grouped_s3_tex.txt   out/cov_dispersion_grouped_headers_s3_tex.txt
python readable_headers.py "Dispersion between covariates within groups" temp/cov_dispersion_grouped_s4_tex.txt   out/cov_dispersion_grouped_headers_s4_tex.txt


