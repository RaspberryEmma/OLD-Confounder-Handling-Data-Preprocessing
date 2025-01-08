#!/bin/bash


for i in 1 2;
do
	for j in 5 6;
	do
		# Round every table to 4 significant figures
		python rounding.py "data/sim-"$i"-scenario-"$j"-model-coefs.csv"            "temp/model_coefs_sim_"$i"_scenario_"$j"_rounded.csv"
		python rounding.py "data/sim-"$i"-scenario-"$j"-model-coefs-grouped.csv"    "temp/model_coefs_grouped_sim_"$i"_scenario_"$j"_rounded.csv"
		python rounding.py "data/sim-"$i"-scenario-"$j"-results-table.csv"          "temp/results_table_sim_"$i"_scenario_"$j"_rounded.csv"
		python rounding.py "data/sim-"$i"-scenario-"$j"-cov-selection.csv"          "temp/cov_selection_sim_"$i"_scenario_"$j"_rounded.csv"
		python rounding.py "data/sim-"$i"-scenario-"$j"-cov-selection-grouped.csv"  "temp/cov_selection_grouped_sim_"$i"_scenario_"$j"_rounded.csv"
		python rounding.py "data/sim-"$i"-scenario-"$j"-cov-dispersion-grouped.csv" "temp/cov_dispersion_grouped_sim_"$i"_scenario_"$j"_rounded.csv"

		# Split large tables by columns
		python split_results_tables.py "temp/results_table_sim_"$i"_scenario_"$j"_rounded.csv"  "temp/results_table_sim_"$i"_scenario_"$j"_rounded_split"

		# Convert final CSVs into TeX data
		python tably.py "temp/model_coefs_grouped_sim_"$i"_scenario_"$j"_rounded.csv"    -o "temp/model_coefs_grouped_sim_"$i"_scenario_"$j"_tex.txt"    -r
		python tably.py "temp/results_table_sim_"$i"_scenario_"$j"_rounded_split_1.csv"  -o "temp/results_table_sim_"$i"_scenario_"$j"_split_1_tex.txt"  -r
		python tably.py "temp/results_table_sim_"$i"_scenario_"$j"_rounded_split_2.csv"  -o "temp/results_table_sim_"$i"_scenario_"$j"_split_2_tex.txt"  -r
		python tably.py "temp/cov_selection_grouped_sim_"$i"_scenario_"$j"_rounded.csv"  -o "temp/cov_selection_grouped_sim_"$i"_scenario_"$j"_tex.txt"  -r
		python tably.py "temp/cov_dispersion_grouped_sim_"$i"_scenario_"$j"_rounded.csv" -o "temp/cov_dispersion_grouped_sim_"$i"_scenario_"$j"_tex.txt" -r

		# Fix table headers for readability
		python readable_headers.py "Result measured"                             "temp/results_table_sim_"$i"_scenario_"$j"_split_1_tex.txt"  "out/results_table_sim_"$i"_scenario_"$j"_split_1_headers_tex.txt"
		python readable_headers.py "Result measured"                             "temp/results_table_sim_"$i"_scenario_"$j"_split_2_tex.txt"  "out/results_table_sim_"$i"_scenario_"$j"_split_2_headers_tex.txt"
		python readable_headers.py "Coefficient"                                 "temp/model_coefs_grouped_sim_"$i"_scenario_"$j"_tex.txt"    "out/model_coefs_grouped_headers_sim_"$i"_scenario_"$j"_tex.txt"
		python readable_headers.py "Proportion of repetitions selected"          "temp/cov_selection_grouped_sim_"$i"_scenario_"$j"_tex.txt"  "out/cov_selection_grouped_headers_sim_"$i"_scenario_"$j"_tex.txt"
		python readable_headers.py "Dispersion between covariates within groups" "temp/cov_dispersion_grouped_sim_"$i"_scenario_"$j"_tex.txt" "out/cov_dispersion_grouped_headers_sim_"$i"_scenario_"$j"_tex.txt"

	done
done

