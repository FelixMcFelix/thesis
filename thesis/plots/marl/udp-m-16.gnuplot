set terminal tikz standalone color size 9cm,6cm font '\scriptsize' preamble '\usepackage{microtype} \usepackage{times} \usepackage[T1]{fontenc} \usepackage{siunitx}\sisetup{detect-all}'
set output "udp-m-16.tex"

load "parula.pal"

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

set xlabel "Iteration ($t \\cdot{} \\SI{50}{\\milli\\second}$)"
set ylabel "Ratio Legit Traffic Preserved"

set yrange [0.0:1.0]
set key inside bottom right

plot '../results/online-16-avg.csv' u 1:3 w lines smooth sbezier title "MARL" dt 1, \
     '../results/m-udp-natural-16.avg.csv' u 1:3 w lines smooth sbezier title "MARL++" dt (18,2,2,2), \
     '../results/m-udp-banded-16.avg.csv' u 1:3 w lines smooth sbezier title "MARL++ (Banded)" ls 4  dt (6,2,2,2), \
     '../results/m-udp-single-16.avg.csv' u 1:3 w lines smooth sbezier title "MARL++ (Single Agent)" ls 5 dt (18,2), \
     '../results/m-udp-uncap-16.avg.csv' u 1:3 w lines smooth sbezier title "MARL++ (Uncapped)" ls 6 dt (6,2), \
