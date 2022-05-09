set terminal tikz standalone color size 9cm,6cm font '\scriptsize' preamble '\usepackage{microtype} \usepackage{libertinus} \usepackage{libertinust1math} \usepackage[binary-units, per-mode=symbol]{siunitx}\sisetup{detect-all} \newcommand{\approachshort}{OPaL} \newcommand{\Coopfw}{CoOp} \newcommand{\coopfw}{\Coopfw} \newcommand{\Indfw}{Ind} \newcommand{\indfw}{\Indfw}'
set output "udp-monthly.tex"

load "gnuplot-palettes/parula.pal"

set boxwidth 0.9
set style data histogram
set style histogram cluster gap 1
set style fill solid border
set datafile separator ","
unset colorbox

set xlabel "Month"
set ylabel "Proportion"

set yrange [0.0:0.35]
set key at 10,0.38

plot '../results/dirA-1.csv' u 16: xtic(1) title "Dir A" lc palette frac 0.25 fill pattern 1, \
     '../results/dirB-1.csv' u 16 title "Dir B" lc palette frac 0.5 fill pattern 2, \
     '../results/biDir-1.csv' u 16 title "Both" lc palette frac 0.75 fill pattern 7