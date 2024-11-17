set datafile missing 'NaN'
set terminal postscript eps enhanced color size 6,6 font 'Arial, 15'
set output ARG2
set view map
unset key
set xrange [0:2000]
set yrange [0:100000]
set palette defined (0 "blue", 0.5 "white", 1 "red")
set style line 1 lc rgb "black" lw 1
do for [i=1:10] { set arrow i from screen 0.1, graph i/10 to screen 0.9, graph i/10 nohead ls 1 }
plot ARG1  matrix using 1:2:3 with image
