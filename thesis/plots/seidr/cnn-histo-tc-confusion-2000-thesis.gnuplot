set terminal tikz standalone color size 9cm,6cm font '\scriptsize' preamble '\usepackage{microtype} \usepackage[oldstyle]{libertinus} \usepackage{libertinust1math} \usepackage[binary-units, per-mode=symbol]{siunitx}\sisetup{detect-all} \newcommand{\approachshort}{OPaL} \newcommand{\Coopfw}{CoOp} \newcommand{\coopfw}{\Coopfw} \newcommand{\Indfw}{Ind} \newcommand{\indfw}{\Indfw}'
set output "cnn-histo-tc-confusion-2000-thesis.tex"

load "gnuplot-palettes/sand.pal"

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
# set logscale cb

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
# set cbrange[0:36725.2]

threshold = 400000

unset colorbox

plot '../results/cnn-histo-raw-tc-confusion-0.csv' matrix u 1:2:3 with image pixels notitle, \
	'' matrix u 1:2:($3 > threshold ? "" : sprintf("\\\\num{%.2fe5}",($3/100000.0))) with labels tc 'white' notitle, \
	'' matrix u 1:2:($3 <= threshold ? "" : sprintf("\\\\num{%.2fe5}",($3/100000.0))) with labels tc 'black' notitle

