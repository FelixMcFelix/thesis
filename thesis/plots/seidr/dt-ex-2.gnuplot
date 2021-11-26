set style increment user
#set terminal png enhanced size 2000,1300 font 'Fira Sans' 16
#set print "-"
set terminal tikz standalone color size 9cm,6cm font '\scriptsize' preamble '\usepackage{microtype} \usepackage{times} \usepackage[T1]{fontenc} \usepackage{siunitx}\sisetup{detect-all}'

load "gnuplot-palettes/accent.pal"

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


set datafile separator ","
#set key autotitle columnhead

namepart = "cubic-1000-app"
infile = "../data/solodata/".namepart.".csv"
outfile = "dt-".namepart.".tex"

print outfile
print infile

set output outfile

#set title "TCP IAT Histogram"
set xlabel "IAT (s)"
set ylabel "Frequency"

set key outside top right

#set key inside right top box height 1.5 opaque

binwidth=0.00000001
bin(x,width)=width*floor(x/width)

set logscale y
set xrange [0:1e-3]

plot infile u (bin($5,binwidth)):(1.0) smooth freq with boxes notitle
