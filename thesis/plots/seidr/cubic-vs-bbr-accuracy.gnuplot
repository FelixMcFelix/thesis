set terminal tikz standalone color size 9cm,6cm font '\scriptsize' preamble '\usepackage{microtype} \usepackage{times} \usepackage[T1]{fontenc} \usepackage{siunitx}\sisetup{detect-all}'
set output "cubic-vs-bbr-accuracy.tex"

load "gnuplot-palettes/inferno.pal"

set style line 102 lc rgb '#a0a0a0' lt 1 lw 1
set border ls 102
set colorbox border 102
set key textcolor rgb "black"
set tics textcolor rgb "black"
set label textcolor rgb "black"

set border 3
set grid x y
set xtics nomirror
set ytics nomirror

#set key autotitle columnhead
set datafile separator ","

set xlabel "Sequence Length (packets)"
set ylabel "Accuracy"

# set yrange [0.0:1.0]
set key outside top horizontal
set key font ",6"

plot "< awk -F, '$3==20 { print $0 }' ../results/lstm-results.csv" u 1:5 w linespoints title "20 Units" ls 3 dt 1, \
     "< awk -F, '$3==40 { print $0 }' ../results/lstm-results.csv" u 1:5 w linespoints title "40 Units"  ls 6 dt (18,2,2,2)
     # '../lstm-results.csv' u 1:3 w lines title "40 Units" ls 6 dt (18,2,2,2)