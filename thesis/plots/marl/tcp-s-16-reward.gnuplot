set terminal tikz standalone color size 9cm,6cm font '\scriptsize' preamble '\usepackage{microtype} \usepackage{times} \usepackage[T1]{fontenc} \usepackage{siunitx}\sisetup{detect-all}'
set output "tcp-s-16-reward.tex"

load "inferno.pal"

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
set ylabel "Reward"

set yrange [-1.0:1.0]
set key inside bottom right

plot '../results/online-16-avg-ng.csv' u 1:2 w lines smooth sbezier title "MARL" dt 1, \
     '../results/spf-tcp-natural-16' u 1:2 w lines smooth sbezier title "SPF" dt (18,2,2,2), \
     '../results/spf-tcp-banded-16' u 1:2 w lines smooth sbezier title "SPF (Banded)" ls 4  dt (6,2,2,2), \
     '../results/spf-tcp-single-16' u 1:2 w lines smooth sbezier title "SPF (Single Agent)" ls 5 dt (18,2), \
     '../results/spf-tcp-uncap-16' u 1:2 w lines smooth sbezier title "SPF (Uncapped)" ls 6 dt (6,2), \
