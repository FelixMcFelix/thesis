set style increment user
set terminal png enhanced size 2000,1300 font 'Times New Roman' 40

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

#set datafile separator ","
#set key autotitle columnhead

namepart = "bbr-1000-app"
infile = "../data/solodata/".namepart."-t.csv"
outfile = "pr-e-".namepart.".png"
mainflow = 1164240446

set output outfile

#set title "TCP Point + Average Rates"
set xlabel "Time (ns)"
set ylabel "Data Rate (bps)"

set xtics 0e10,1e10
set xrange [0:4e10]

set key outside top right

#set key inside right top box height 1.5 opaque
set rmargin 10
plot infile u 4:($1==mainflow?$2:1/0) w dots title "Point Rate" dt 4 pt 7 lc 6, \
	infile u 4:($1==mainflow?$6:1/0) w points title "Sliding Window Rate" dt 4 pt 7 lc 7
