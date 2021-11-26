set terminal tikz createstyle standalone color size 12cm,6cm font '\small' preamble '\usepackage{microtype} \usepackage{times} \usepackage[T1]{fontenc} \usepackage{siunitx}\sisetup{detect-all}'
set output "compression-v6.tex"

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
set ylabel "Compression Ratio (log)"

# set yrange [0.0:1.0]
set key outside top horizontal
set key font ",8"

set logscale y

set arrow 1 from 1950,90 to 1950,57000 dt 2
set label "$736.8\\times$" at 1600,1500

plot "< awk -F, '$1==\"MTU vs. Stream\" { print $0 }' ../results/histo-sz/compression-v6.csv" u 2:3 w lines title "MTU $\\rightarrow$ Stream" ls 4 dt 1,\
	"< awk -F, -v OFS=',' '$1==\"MTU vs. Stream\" { OFMT = \"%.2f\"; print $2, 0+$3 }' ../results/histo-sz/compression-v6.csv | tail -n 1" u 1:2:2 w labels left notitle,\
	"< awk -F, '$1==\"MTU vs. Histo(100)\" { print $0 }' ../results/histo-sz/compression-v6.csv" u 2:3 w lines title "MTU $\\rightarrow$ Histo(100)" ls 4 dt (18,2,2,2),\
	"< awk -F, -v OFS=',' '$1==\"MTU vs. Histo(100)\" { OFMT = \"%.2f\"; print $2, 0+$3 }' ../results/histo-sz/compression-v6.csv | tail -n 1" u 1:2:2 w labels left notitle,\
	"< awk -F, '$1==\"Jumbo vs. Stream\" { print $0 }' ../results/histo-sz/compression-v6.csv" u 2:3 w lines title "Jumbo $\\rightarrow$ Stream" ls 6 dt (6,2),\
	"< awk -F, -v OFS=',' '$1==\"Jumbo vs. Stream\" { OFMT = \"%.2f\"; print $2, 0+$3 }' ../results/histo-sz/compression-v6.csv | tail -n 1" u 1:2:2 w labels left notitle,\
	"< awk -F, '$1==\"Jumbo vs. Histo(100)\" { print $0 }' ../results/histo-sz/compression-v6.csv" u 2:3 w lines title "Jumbo $\\rightarrow$ Histo(100)" ls 6 dt (2,2,2,2),\
	"< awk -F, -v OFS=',' '$1==\"Jumbo vs. Histo(100)\" { OFMT = \"%.2f\"; print $2, 0+$3 }' ../results/histo-sz/compression-v6.csv | tail -n 1" u 1:2:2 w labels left notitle,\
