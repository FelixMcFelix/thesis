set terminal tikz standalone color size 9cm,6cm font '\scriptsize' preamble '\usepackage{microtype} \usepackage{times} \usepackage[T1]{fontenc} \usepackage{siunitx}\sisetup{detect-all}'
set output "online-varyN-binary.tex"

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

plot '../results/online-2-avg.csv' u 1:3 w lines smooth sbezier title "$n=2$" ls 1 dt 1, \
     '../results/online-4-avg.csv' u 1:3 w lines smooth sbezier title "$n=4$" ls 3 dt (18,2,2,2), \
     '../results/online-8-avg.csv' u 1:3 w lines smooth sbezier title "$n=8$" ls 4 dt (6,2,2,2), \
     '../results/online-16-avg.csv' u 1:3 w lines smooth sbezier title "$n=16$" ls 6 dt (18,2)
