**# BEC-513 ASSIGNMENT**  
the commands to execute script for each of the question is provided below.  

**Q1**  
python scripts/q1.py data/to_select.tsv data/q1_data.tsv output/q1_output/q1_output.tsv  
python scripts/q1.py <query_file> <Selection_file> <output_file_name>  

**Q2**
cat data/q2_data.tsv | Rscript scripts/q2.R "different_clusters.png" "Relative from center [bp]" "Enrichment over Mean" "MNase fragment profile"  
cat <data_file> | Rscript scripts/q2.R <output_Image_file_name> <X_label> <y_label> <plot_title>  

**Q3**  
Rscript scripts/q3.R data/list_q3.tsv  > output/q3/join_output.tsv  
Rscript scripts/q3.R <input_file>  > <output_file>  

**Q4**
cat data/first_hundred_numbers.tsv | python scripts/q4.py 4 > output/q4/q4.txt  
cat <input_file> | python scripts/q4.py <Quartile_interger_only> > <output_file>  

**Q5**  
zcat data/big_data.tsv.gz | gnuplot -e "ARG1='/dev/stdin'; ARG2='output/q5_output/big_matrix.eps'" scripts/q5.gp  
zcat <input_file> | gnuplot -e "ARG1='/dev/stdin'; ARG2='<output_file_name>'" scripts/q5.gp  
