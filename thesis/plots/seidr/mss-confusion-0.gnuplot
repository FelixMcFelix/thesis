set terminal tikz standalone color size 9cm,6cm font '\scriptsize' preamble '\usepackage{microtype} \usepackage{times} \usepackage[T1]{fontenc} \usepackage{siunitx}\sisetup{detect-all}'
set output "mss-confusion-0.tex"

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

set xlabel "Predicted Label"
set ylabel "True Label"
set cblabel "Frequency"

# set yrange [0.0:1.0]
#set key outside top horizontal
#set key font ",6"
set logscale cb

set xtics ('BBR' 0.0,\
'Cubic' 1.0,\
'Reno' 2.0,\
'Vegas' 3.0,\
)
set ytics ('BBR' 0.0,\
'Cubic' 1.0,\
'Reno' 2.0,\
'Vegas' 3.0,\
)
set cbrange[0:36725.2]

plot '../results/lstm-multiplex-ss-confusion-0.csv' matrix u 1:2:3 with image pixels notitle, \
	"../results/lstm-multiplex-confusion-0.csv" matrix u 1:2:($3 == 0 ? "" : sprintf("%g",($3/36725.2))) with labels notitle

