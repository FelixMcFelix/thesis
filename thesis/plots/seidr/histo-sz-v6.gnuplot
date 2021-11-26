set terminal tikz standalone color size 9cm,6cm font '\scriptsize' preamble '\usepackage{microtype} \usepackage{times} \usepackage[T1]{fontenc} \usepackage{siunitx}\sisetup{detect-all}'
set output "histo-sz-v6.tex"

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
set ylabel "Data Volume (bytes)"

# set yrange [0.0:1.0]
set key outside top horizontal
set key font ",6"

set logscale y

plot "< awk -F, '$1==\"MTU\" { print $0 }' ../results/histo-sz/volume-v6.csv" u 2:3 w lines title "MTU" ls 2 dt 1,\
	"< awk -F, -v OFS=',' '$1==\"MTU\" { OFMT = \"%.0f\"; print $2, 0+$3 }' ../results/histo-sz/volume-v6.csv | tail -n 1" u 1:2:2 w labels left notitle,\
	"< awk -F, '$1==\"Jumbo\" { print $0 }' ../results/histo-sz/volume-v6.csv" u 2:3 w lines title "Jumbo" ls 4 dt (18,2,2,2),\
	"< awk -F, -v OFS=',' '$1==\"Jumbo\" { OFMT = \"%.0f\"; print $2, 0+$3 }' ../results/histo-sz/volume-v6.csv | tail -n 1" u 1:2:2 w labels left notitle,\
	"< awk -F, '$1==\"Stream\" { print $0 }' ../results/histo-sz/volume-v6.csv" u 2:3 w lines title "Stream" ls 6 dt (6,2,2,2),\
	"< awk -F, -v OFS=',' '$1==\"Stream\" { OFMT = \"%.0f\"; print $2, 0+$3 }' ../results/histo-sz/volume-v6.csv | tail -n 1" u 1:2:2 w labels left notitle,\
	"< awk -F, '$1==\"Histo\" { print $0 }' ../results/histo-sz/volume-v6.csv" u 2:3 w lines title "Histo(100)" ls 7 dt (18,2),\
	"< awk -F, -v OFS=',' '$1==\"Histo\" { OFMT = \"%.0f\"; print $2, 0+$3 }' ../results/histo-sz/volume-v6.csv | tail -n 1" u 1:2:2 w labels left notitle,\
