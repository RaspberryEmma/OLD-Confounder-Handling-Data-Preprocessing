#!/bin/bash



# Round every table to 4 significant figures

python rounding.py data/sim-1-scenario-1-model-coefs.csv  temp/model_coefs_sim_1_scenario_1_rounded.csv
python rounding.py data/sim-1-scenario-2-model-coefs.csv  temp/model_coefs_sim_1_scenario_2_rounded.csv
python rounding.py data/sim-1-scenario-3-model-coefs.csv  temp/model_coefs_sim_1_scenario_3_rounded.csv
python rounding.py data/sim-1-scenario-4-model-coefs.csv  temp/model_coefs_sim_1_scenario_4_rounded.csv
python rounding.py data/sim-1-scenario-5-model-coefs.csv  temp/model_coefs_sim_1_scenario_5_rounded.csv
python rounding.py data/sim-1-scenario-6-model-coefs.csv  temp/model_coefs_sim_1_scenario_6_rounded.csv
python rounding.py data/sim-1-scenario-7-model-coefs.csv  temp/model_coefs_sim_1_scenario_7_rounded.csv

python rounding.py data/sim-1-scenario-1-model-coefs-grouped.csv  temp/model_coefs_grouped_sim_1_scenario_1_rounded.csv
python rounding.py data/sim-1-scenario-2-model-coefs-grouped.csv  temp/model_coefs_grouped_sim_1_scenario_2_rounded.csv
python rounding.py data/sim-1-scenario-3-model-coefs-grouped.csv  temp/model_coefs_grouped_sim_1_scenario_3_rounded.csv
python rounding.py data/sim-1-scenario-4-model-coefs-grouped.csv  temp/model_coefs_grouped_sim_1_scenario_4_rounded.csv
python rounding.py data/sim-1-scenario-5-model-coefs-grouped.csv  temp/model_coefs_grouped_sim_1_scenario_5_rounded.csv
python rounding.py data/sim-1-scenario-6-model-coefs-grouped.csv  temp/model_coefs_grouped_sim_1_scenario_6_rounded.csv
python rounding.py data/sim-1-scenario-7-model-coefs-grouped.csv  temp/model_coefs_grouped_sim_1_scenario_7_rounded.csv

python rounding.py data/sim-1-scenario-1-results-table.csv  temp/results_table_sim_1_scenario_1_rounded.csv
python rounding.py data/sim-1-scenario-2-results-table.csv  temp/results_table_sim_1_scenario_2_rounded.csv
python rounding.py data/sim-1-scenario-3-results-table.csv  temp/results_table_sim_1_scenario_3_rounded.csv
python rounding.py data/sim-1-scenario-4-results-table.csv  temp/results_table_sim_1_scenario_4_rounded.csv
python rounding.py data/sim-1-scenario-5-results-table.csv  temp/results_table_sim_1_scenario_5_rounded.csv
python rounding.py data/sim-1-scenario-6-results-table.csv  temp/results_table_sim_1_scenario_6_rounded.csv
python rounding.py data/sim-1-scenario-7-results-table.csv  temp/results_table_sim_1_scenario_7_rounded.csv

python rounding.py data/sim-1-scenario-1-cov-selection.csv  temp/cov_selection_sim_1_scenario_1_rounded.csv
python rounding.py data/sim-1-scenario-2-cov-selection.csv  temp/cov_selection_sim_1_scenario_2_rounded.csv
python rounding.py data/sim-1-scenario-3-cov-selection.csv  temp/cov_selection_sim_1_scenario_3_rounded.csv
python rounding.py data/sim-1-scenario-4-cov-selection.csv  temp/cov_selection_sim_1_scenario_4_rounded.csv
python rounding.py data/sim-1-scenario-5-cov-selection.csv  temp/cov_selection_sim_1_scenario_5_rounded.csv
python rounding.py data/sim-1-scenario-6-cov-selection.csv  temp/cov_selection_sim_1_scenario_6_rounded.csv
python rounding.py data/sim-1-scenario-7-cov-selection.csv  temp/cov_selection_sim_1_scenario_7_rounded.csv

python rounding.py data/sim-1-scenario-1-cov-selection-grouped.csv  temp/cov_selection_grouped_sim_1_scenario_1_rounded.csv
python rounding.py data/sim-1-scenario-2-cov-selection-grouped.csv  temp/cov_selection_grouped_sim_1_scenario_2_rounded.csv
python rounding.py data/sim-1-scenario-3-cov-selection-grouped.csv  temp/cov_selection_grouped_sim_1_scenario_3_rounded.csv
python rounding.py data/sim-1-scenario-4-cov-selection-grouped.csv  temp/cov_selection_grouped_sim_1_scenario_4_rounded.csv
python rounding.py data/sim-1-scenario-5-cov-selection-grouped.csv  temp/cov_selection_grouped_sim_1_scenario_5_rounded.csv
python rounding.py data/sim-1-scenario-6-cov-selection-grouped.csv  temp/cov_selection_grouped_sim_1_scenario_6_rounded.csv
python rounding.py data/sim-1-scenario-7-cov-selection-grouped.csv  temp/cov_selection_grouped_sim_1_scenario_7_rounded.csv

python rounding.py data/sim-1-scenario-1-cov-dispersion-grouped.csv  temp/cov_dispersion_grouped_sim_1_scenario_1_rounded.csv
python rounding.py data/sim-1-scenario-2-cov-dispersion-grouped.csv  temp/cov_dispersion_grouped_sim_1_scenario_2_rounded.csv
python rounding.py data/sim-1-scenario-3-cov-dispersion-grouped.csv  temp/cov_dispersion_grouped_sim_1_scenario_3_rounded.csv
python rounding.py data/sim-1-scenario-4-cov-dispersion-grouped.csv  temp/cov_dispersion_grouped_sim_1_scenario_4_rounded.csv
python rounding.py data/sim-1-scenario-5-cov-dispersion-grouped.csv  temp/cov_dispersion_grouped_sim_1_scenario_5_rounded.csv
python rounding.py data/sim-1-scenario-6-cov-dispersion-grouped.csv  temp/cov_dispersion_grouped_sim_1_scenario_6_rounded.csv
python rounding.py data/sim-1-scenario-7-cov-dispersion-grouped.csv  temp/cov_dispersion_grouped_sim_1_scenario_7_rounded.csv



# Split large tables by columns

python split_results_tables.py temp/results_table_sim_1_scenario_1_rounded.csv  temp/results_table_sim_1_scenario_1_rounded_split
python split_results_tables.py temp/results_table_sim_1_scenario_2_rounded.csv  temp/results_table_sim_1_scenario_2_rounded_split
python split_results_tables.py temp/results_table_sim_1_scenario_3_rounded.csv  temp/results_table_sim_1_scenario_3_rounded_split
python split_results_tables.py temp/results_table_sim_1_scenario_4_rounded.csv  temp/results_table_sim_1_scenario_4_rounded_split
python split_results_tables.py temp/results_table_sim_1_scenario_5_rounded.csv  temp/results_table_sim_1_scenario_5_rounded_split
python split_results_tables.py temp/results_table_sim_1_scenario_6_rounded.csv  temp/results_table_sim_1_scenario_6_rounded_split
python split_results_tables.py temp/results_table_sim_1_scenario_7_rounded.csv  temp/results_table_sim_1_scenario_7_rounded_split



# Convert final CSVs into TeX data

python tably.py temp/model_coefs_grouped_sim_1_scenario_1_rounded.csv   -o temp/model_coefs_grouped_sim_1_scenario_1_tex.txt   -r
python tably.py temp/model_coefs_grouped_sim_1_scenario_2_rounded.csv   -o temp/model_coefs_grouped_sim_1_scenario_2_tex.txt   -r
python tably.py temp/model_coefs_grouped_sim_1_scenario_3_rounded.csv   -o temp/model_coefs_grouped_sim_1_scenario_3_tex.txt   -r
python tably.py temp/model_coefs_grouped_sim_1_scenario_4_rounded.csv   -o temp/model_coefs_grouped_sim_1_scenario_4_tex.txt   -r
python tably.py temp/model_coefs_grouped_sim_1_scenario_5_rounded.csv   -o temp/model_coefs_grouped_sim_1_scenario_5_tex.txt   -r
python tably.py temp/model_coefs_grouped_sim_1_scenario_6_rounded.csv   -o temp/model_coefs_grouped_sim_1_scenario_6_tex.txt   -r
python tably.py temp/model_coefs_grouped_sim_1_scenario_7_rounded.csv   -o temp/model_coefs_grouped_sim_1_scenario_7_tex.txt   -r

python tably.py temp/results_table_sim_1_scenario_1_rounded_split_1.csv   -o temp/results_table_sim_1_scenario_1_split_1_tex.txt   -r
python tably.py temp/results_table_sim_1_scenario_1_rounded_split_2.csv   -o temp/results_table_sim_1_scenario_1_split_2_tex.txt   -r
python tably.py temp/results_table_sim_1_scenario_2_rounded_split_1.csv   -o temp/results_table_sim_1_scenario_2_split_1_tex.txt   -r
python tably.py temp/results_table_sim_1_scenario_2_rounded_split_2.csv   -o temp/results_table_sim_1_scenario_2_split_2_tex.txt   -r
python tably.py temp/results_table_sim_1_scenario_3_rounded_split_1.csv   -o temp/results_table_sim_1_scenario_3_split_1_tex.txt   -r
python tably.py temp/results_table_sim_1_scenario_3_rounded_split_2.csv   -o temp/results_table_sim_1_scenario_3_split_2_tex.txt   -r
python tably.py temp/results_table_sim_1_scenario_4_rounded_split_1.csv   -o temp/results_table_sim_1_scenario_4_split_1_tex.txt   -r
python tably.py temp/results_table_sim_1_scenario_4_rounded_split_2.csv   -o temp/results_table_sim_1_scenario_4_split_2_tex.txt   -r
python tably.py temp/results_table_sim_1_scenario_5_rounded_split_1.csv   -o temp/results_table_sim_1_scenario_5_split_1_tex.txt   -r
python tably.py temp/results_table_sim_1_scenario_5_rounded_split_2.csv   -o temp/results_table_sim_1_scenario_5_split_2_tex.txt   -r
python tably.py temp/results_table_sim_1_scenario_6_rounded_split_1.csv   -o temp/results_table_sim_1_scenario_6_split_1_tex.txt   -r
python tably.py temp/results_table_sim_1_scenario_6_rounded_split_2.csv   -o temp/results_table_sim_1_scenario_6_split_2_tex.txt   -r
python tably.py temp/results_table_sim_1_scenario_7_rounded_split_1.csv   -o temp/results_table_sim_1_scenario_7_split_1_tex.txt   -r
python tably.py temp/results_table_sim_1_scenario_7_rounded_split_2.csv   -o temp/results_table_sim_1_scenario_7_split_2_tex.txt   -r


python tably.py temp/cov_selection_grouped_sim_1_scenario_1_rounded.csv   -o temp/cov_selection_grouped_sim_1_scenario_1_tex.txt   -r
python tably.py temp/cov_selection_grouped_sim_1_scenario_2_rounded.csv   -o temp/cov_selection_grouped_sim_1_scenario_2_tex.txt   -r
python tably.py temp/cov_selection_grouped_sim_1_scenario_3_rounded.csv   -o temp/cov_selection_grouped_sim_1_scenario_3_tex.txt   -r
python tably.py temp/cov_selection_grouped_sim_1_scenario_4_rounded.csv   -o temp/cov_selection_grouped_sim_1_scenario_4_tex.txt   -r
python tably.py temp/cov_selection_grouped_sim_1_scenario_5_rounded.csv   -o temp/cov_selection_grouped_sim_1_scenario_5_tex.txt   -r
python tably.py temp/cov_selection_grouped_sim_1_scenario_6_rounded.csv   -o temp/cov_selection_grouped_sim_1_scenario_6_tex.txt   -r
python tably.py temp/cov_selection_grouped_sim_1_scenario_7_rounded.csv   -o temp/cov_selection_grouped_sim_1_scenario_7_tex.txt   -r

python tably.py temp/cov_dispersion_grouped_sim_1_scenario_1_rounded.csv   -o temp/cov_dispersion_grouped_sim_1_scenario_1_tex.txt   -r
python tably.py temp/cov_dispersion_grouped_sim_1_scenario_2_rounded.csv   -o temp/cov_dispersion_grouped_sim_1_scenario_2_tex.txt   -r
python tably.py temp/cov_dispersion_grouped_sim_1_scenario_3_rounded.csv   -o temp/cov_dispersion_grouped_sim_1_scenario_3_tex.txt   -r
python tably.py temp/cov_dispersion_grouped_sim_1_scenario_4_rounded.csv   -o temp/cov_dispersion_grouped_sim_1_scenario_4_tex.txt   -r
python tably.py temp/cov_dispersion_grouped_sim_1_scenario_5_rounded.csv   -o temp/cov_dispersion_grouped_sim_1_scenario_5_tex.txt   -r
python tably.py temp/cov_dispersion_grouped_sim_1_scenario_6_rounded.csv   -o temp/cov_dispersion_grouped_sim_1_scenario_6_tex.txt   -r
python tably.py temp/cov_dispersion_grouped_sim_1_scenario_7_rounded.csv   -o temp/cov_dispersion_grouped_sim_1_scenario_7_tex.txt   -r



# Fix table headers for readability

python readable_headers.py "Result measured" temp/results_table_sim_1_scenario_1_split_1_tex.txt  out/results_table_sim_1_scenario_1_split_1_headers_tex.txt
python readable_headers.py "Result measured" temp/results_table_sim_1_scenario_1_split_2_tex.txt  out/results_table_sim_1_scenario_1_split_2_headers_tex.txt
python readable_headers.py "Result measured" temp/results_table_sim_1_scenario_2_split_1_tex.txt  out/results_table_sim_1_scenario_2_split_1_headers_tex.txt
python readable_headers.py "Result measured" temp/results_table_sim_1_scenario_2_split_2_tex.txt  out/results_table_sim_1_scenario_2_split_2_headers_tex.txt
python readable_headers.py "Result measured" temp/results_table_sim_1_scenario_3_split_1_tex.txt  out/results_table_sim_1_scenario_3_split_1_headers_tex.txt
python readable_headers.py "Result measured" temp/results_table_sim_1_scenario_3_split_2_tex.txt  out/results_table_sim_1_scenario_3_split_2_headers_tex.txt
python readable_headers.py "Result measured" temp/results_table_sim_1_scenario_4_split_1_tex.txt  out/results_table_sim_1_scenario_4_split_1_headers_tex.txt
python readable_headers.py "Result measured" temp/results_table_sim_1_scenario_4_split_2_tex.txt  out/results_table_sim_1_scenario_4_split_2_headers_tex.txt
python readable_headers.py "Result measured" temp/results_table_sim_1_scenario_5_split_1_tex.txt  out/results_table_sim_1_scenario_5_split_1_headers_tex.txt
python readable_headers.py "Result measured" temp/results_table_sim_1_scenario_5_split_2_tex.txt  out/results_table_sim_1_scenario_5_split_2_headers_tex.txt
python readable_headers.py "Result measured" temp/results_table_sim_1_scenario_6_split_1_tex.txt  out/results_table_sim_1_scenario_6_split_1_headers_tex.txt
python readable_headers.py "Result measured" temp/results_table_sim_1_scenario_6_split_2_tex.txt  out/results_table_sim_1_scenario_6_split_2_headers_tex.txt
python readable_headers.py "Result measured" temp/results_table_sim_1_scenario_7_split_1_tex.txt  out/results_table_sim_1_scenario_7_split_1_headers_tex.txt
python readable_headers.py "Result measured" temp/results_table_sim_1_scenario_7_split_2_tex.txt  out/results_table_sim_1_scenario_7_split_2_headers_tex.txt

python readable_headers.py "Coefficient" temp/model_coefs_grouped_sim_1_scenario_1_tex.txt  out/model_coefs_grouped_headers_sim_1_scenario_1_tex.txt
python readable_headers.py "Coefficient" temp/model_coefs_grouped_sim_1_scenario_2_tex.txt  out/model_coefs_grouped_headers_sim_1_scenario_2_tex.txt
python readable_headers.py "Coefficient" temp/model_coefs_grouped_sim_1_scenario_3_tex.txt  out/model_coefs_grouped_headers_sim_1_scenario_3_tex.txt
python readable_headers.py "Coefficient" temp/model_coefs_grouped_sim_1_scenario_4_tex.txt  out/model_coefs_grouped_headers_sim_1_scenario_4_tex.txt
python readable_headers.py "Coefficient" temp/model_coefs_grouped_sim_1_scenario_5_tex.txt  out/model_coefs_grouped_headers_sim_1_scenario_5_tex.txt
python readable_headers.py "Coefficient" temp/model_coefs_grouped_sim_1_scenario_6_tex.txt  out/model_coefs_grouped_headers_sim_1_scenario_6_tex.txt
python readable_headers.py "Coefficient" temp/model_coefs_grouped_sim_1_scenario_7_tex.txt  out/model_coefs_grouped_headers_sim_1_scenario_7_tex.txt

python readable_headers.py "Proportion of repetitions selected" temp/cov_selection_grouped_sim_1_scenario_1_tex.txt  out/cov_selection_grouped_headers_sim_1_scenario_1_tex.txt
python readable_headers.py "Proportion of repetitions selected" temp/cov_selection_grouped_sim_1_scenario_2_tex.txt  out/cov_selection_grouped_headers_sim_1_scenario_2_tex.txt
python readable_headers.py "Proportion of repetitions selected" temp/cov_selection_grouped_sim_1_scenario_3_tex.txt  out/cov_selection_grouped_headers_sim_1_scenario_3_tex.txt
python readable_headers.py "Proportion of repetitions selected" temp/cov_selection_grouped_sim_1_scenario_4_tex.txt  out/cov_selection_grouped_headers_sim_1_scenario_4_tex.txt
python readable_headers.py "Proportion of repetitions selected" temp/cov_selection_grouped_sim_1_scenario_5_tex.txt  out/cov_selection_grouped_headers_sim_1_scenario_5_tex.txt
python readable_headers.py "Proportion of repetitions selected" temp/cov_selection_grouped_sim_1_scenario_6_tex.txt  out/cov_selection_grouped_headers_sim_1_scenario_6_tex.txt
python readable_headers.py "Proportion of repetitions selected" temp/cov_selection_grouped_sim_1_scenario_7_tex.txt  out/cov_selection_grouped_headers_sim_1_scenario_7_tex.txt

python readable_headers.py "Dispersion between covariates within groups" temp/cov_dispersion_grouped_sim_1_scenario_1_tex.txt   out/cov_dispersion_grouped_headers_sim_1_scenario_1_tex.txt
python readable_headers.py "Dispersion between covariates within groups" temp/cov_dispersion_grouped_sim_1_scenario_2_tex.txt   out/cov_dispersion_grouped_headers_sim_1_scenario_2_tex.txt
python readable_headers.py "Dispersion between covariates within groups" temp/cov_dispersion_grouped_sim_1_scenario_3_tex.txt   out/cov_dispersion_grouped_headers_sim_1_scenario_3_tex.txt
python readable_headers.py "Dispersion between covariates within groups" temp/cov_dispersion_grouped_sim_1_scenario_4_tex.txt   out/cov_dispersion_grouped_headers_sim_1_scenario_4_tex.txt
python readable_headers.py "Dispersion between covariates within groups" temp/cov_dispersion_grouped_sim_1_scenario_5_tex.txt   out/cov_dispersion_grouped_headers_sim_1_scenario_5_tex.txt
python readable_headers.py "Dispersion between covariates within groups" temp/cov_dispersion_grouped_sim_1_scenario_6_tex.txt   out/cov_dispersion_grouped_headers_sim_1_scenario_6_tex.txt
python readable_headers.py "Dispersion between covariates within groups" temp/cov_dispersion_grouped_sim_1_scenario_7_tex.txt   out/cov_dispersion_grouped_headers_sim_1_scenario_7_tex.txt






