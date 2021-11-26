set terminal tikz standalone color size 9cm,6cm font '\scriptsize' preamble '\usepackage{microtype} \usepackage{times} \usepackage[T1]{fontenc} \usepackage{siunitx}\sisetup{detect-all}'
set output "timestamp-accuracy-norm.tex"

load "gnuplot-palettes/inferno.pal"

set style line 102 lc rgb '#a0a0a0' lt 1 lw 1
set border ls 102
set colorbox border 102
set key textcolor rgb "black"
set tics textcolor rgb "black"
set label textcolor rgb "black"

set border 3
set grid y
set xtics nomirror
set ytics nomirror

#set key autotitle columnhead
set datafile separator ","

set xlabel "Timestamp Resolution"
set ylabel "Relative Accuracy"

# set yrange [0.0:1.0]
set xrange [-0.5:2.5]
set key outside top horizontal
#set key font ",6"

set style fill solid 1.0
unset xtics
set xtics ('\color{black}nanosecond' 0.0, '\color{black} microsecond' 1.0, '\color{black} millisecond' 2.0,)
set boxwidth 0.5

maxA = 0.34242469668388364

set yrange [0.7:1.0]
set grid noxtics

plot "../results/lstm-lowres-only-dtpr-results.csv" u ($6/maxA) w boxes ls 3 notitle
#plot "../lstm-lowres-only-dtpr-results.csv" u 6 w boxes ls 3
