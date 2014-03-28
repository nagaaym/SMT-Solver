reset

### pour pdf
# set term pdfcairo
# set output "courbe1.pdf" # le nom du fichier qui est engendre


set title "#{title}"
set xlabel "#{xlabel}"
set ylabel "#{ylabel}"

set style data linespoints

set pointsize 1

plot for [i=2:#{ncols}] "#{data}" using i:xticlabels(1) title columnheader(i)

set autoscale

exit