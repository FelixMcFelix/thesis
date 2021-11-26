set terminal tikz standalone color size 9cm,6cm font '\scriptsize' preamble '\usepackage{microtype} \usepackage{times} \usepackage[T1]{fontenc} \usepackage{siunitx}\sisetup{detect-all}'
set output "4class-results.tex"

load "gnuplot-palettes/parula.pal"

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

set style fill solid border
set boxwidth 0.8
set yrange [*:1]
set xrange [0:15]

set xtics ("500" 1.5, \
	"1000" 4.5, \
	"2000" 7.5, \
	"Full" 11.5, \
	) scale 0.0

# set yrange [0.0:1.0]
set key outside top horizontal maxrows 2
set key font ",6"

# set logscale y

plot "< awk -F, '$1==500 { print $0 }' ../results/cnn-histo-raw-app-results.csv" using (1.0):5:10:(1.0) with boxerrorbars fill pattern 1 ls 3 title "CNN, Application-limited",\
	"< awk -F, '$1==500 { print $0 }' ../results/cnn-histo-raw-tc-results.csv" using (2.0):5:10:(1.0) with boxerrorbars fill pattern 2 ls 4 title "CNN, Wire-limited",\
	"< awk -F, '$1==1000 { print $0 }' ../results/cnn-histo-raw-app-results.csv" using (4.0):5:10:(1.0) with boxerrorbars fill pattern 1 ls 3 notitle,\
	"< awk -F, '$1==1000 { print $0 }' ../results/cnn-histo-raw-tc-results.csv" using (5.0):5:10:(1.0) with boxerrorbars fill pattern 2 ls 4 notitle,\
	"< awk -F, '$1==2000 { print $0 }' ../results/cnn-histo-raw-app-results.csv" using (7.0):5:10:(1.0) with boxerrorbars fill pattern 1 ls 3 notitle,\
	"< awk -F, '$1==2000 { print $0 }' ../results/cnn-histo-raw-tc-results.csv" using (8.0):5:10:(1.0) with boxerrorbars fill pattern 2 ls 4 notitle,\
	"< awk -F, '$1==\"Full\" { print $0 }' ../results/cnn-histo-full-raw-app-results.csv" using (10.0):5:10:(1.0) with boxerrorbars fill pattern 1 ls 3 notitle,\
	"< awk -F, '$1==\"Full\" { print $0 }' ../results/cnn-histo-full-raw-tc-results.csv" using (11.0):5:10:(1.0) with boxerrorbars fill pattern 2 ls 4 notitle,\
	"< awk -F, '$1==\"Full\" && $2==2 { print $0 }' ../results/knn-histo-4c-raw-app-results.csv" using (12.0):3:7:(1.0) with boxerrorbars fill pattern 7 ls 6 title "$k$-NN, Application-limited",\
	"< awk -F, '$1==\"Full\" && $2==2 { print $0 }' ../results/knn-histo-4c-raw-tc-results.csv" using (13.0):3:7:(1.0) with boxerrorbars fill pattern 8 ls 7 title "$k$-NN, Wire-limited",\

# plot "< awk -F, '$1==500 { print $0 }' ../results/cnn-histo-raw-app-results.csv" using (1.0):5:10:(1.0) with boxerrorbars fill pattern 1 ls 3 title "CNN, Application-limited",\
# 	"< awk -F, '$1==500 { print $0 }' ../results/cnn-histo-raw-tc-results.csv" using (2.0):5:10:(1.0) with boxerrorbars fill pattern 2 ls 4 title "CNN, Wire-limited",\
# 	"< awk -F, '$1==500 && $2==2 { print $0 }' ../results/knn-histo-4c-raw-app-results.csv" using (3.0):3:7:(1.0) with boxerrorbars fill pattern 7 ls 6 notitle,\
# 	"< awk -F, '$1==500 && $2==2 { print $0 }' ../results/knn-histo-4c-raw-tc-results.csv" using (4.0):3:7:(1.0) with boxerrorbars fill pattern 8 ls 7 notitle,\
# 	"< awk -F, '$1==1000 { print $0 }' ../results/cnn-histo-raw-app-results.csv" using (6.0):5:10:(1.0) with boxerrorbars fill pattern 1 ls 3 notitle,\
# 	"< awk -F, '$1==1000 { print $0 }' ../results/cnn-histo-raw-tc-results.csv" using (7.0):5:10:(1.0) with boxerrorbars fill pattern 2 ls 4 notitle,\
# 	"< awk -F, '$1==1000 && $2==2 { print $0 }' ../results/knn-histo-4c-raw-app-results.csv" using (8.0):3:7:(1.0) with boxerrorbars fill pattern 7 ls 6 notitle,\
# 	"< awk -F, '$1==1000 && $2==2 { print $0 }' ../results/knn-histo-4c-raw-tc-results.csv" using (9.0):3:7:(1.0) with boxerrorbars fill pattern 8 ls 7 notitle,\
# 	"< awk -F, '$1==2000 { print $0 }' ../results/cnn-histo-raw-app-results.csv" using (11.0):5:10:(1.0) with boxerrorbars fill pattern 1 ls 3 notitle,\
# 	"< awk -F, '$1==2000 { print $0 }' ../results/cnn-histo-raw-tc-results.csv" using (12.0):5:10:(1.0) with boxerrorbars fill pattern 2 ls 4 notitle,\
# 	"< awk -F, '$1==2000 && $2==2 { print $0 }' ../results/knn-histo-4c-raw-app-results.csv" using (13.0):3:7:(1.0) with boxerrorbars fill pattern 7 ls 6 notitle,\
# 	"< awk -F, '$1==2000 && $2==2 { print $0 }' ../results/knn-histo-4c-raw-tc-results.csv" using (14.0):3:7:(1.0) with boxerrorbars fill pattern 8 ls 7 notitle,\
# 	"< awk -F, '$1==\"Full\" { print $0 }' ../results/cnn-histo-full-raw-app-results.csv" using (16.0):5:10:(1.0) with boxerrorbars fill pattern 1 ls 3 notitle,\
# 	"< awk -F, '$1==\"Full\" { print $0 }' ../results/cnn-histo-full-raw-tc-results.csv" using (17.0):5:10:(1.0) with boxerrorbars fill pattern 2 ls 4 notitle,\
# 	"< awk -F, '$1==\"Full\" && $2==2 { print $0 }' ../results/knn-histo-4c-raw-app-results.csv" using (18.0):3:7:(1.0) with boxerrorbars fill pattern 7 ls 6 title "$k$-NN, Application-limited",\
# 	"< awk -F, '$1==\"Full\" && $2==2 { print $0 }' ../results/knn-histo-4c-raw-tc-results.csv" using (19.0):3:7:(1.0) with boxerrorbars fill pattern 8 ls 7 title "$k$-NN, Wire-limited",\
