set macro

set loadpath '~/git/gnuplot-colorbrewer/diverging' \
    '~/git/gnuplot-colorbrewer/qualitative' \
    '~/git/gnuplot-colorbrewer/sequential'



my_line_width = "2"
my_axis_width = "1.5"
my_ps = "1.2"

set terminal wxt size 640,640 enhanced font 'Verdana,10'

bin(x,width)=width*floor(x/width)

load 'Paired.plt'

# Axes
set style line 11 lc rgb '#808080' lt 1
set border 3 back ls 11
set tics nomirror out scale 0.75
# Grid
set style line 12 lc rgb'#808080' lt 0 lw 1
set grid back ls 12


set palette


set y2tics
set size square



GP(T)=GR*exp(log(GG/GR)*tanh(exp((T0-T)/DT))) ;
    GR=0.1 ;
    GG=1000 ;
    T0=213 ;
    DT=10 ;


set style line 1 lt 2 lc rgb "red" lw 2
set style line 3 lt 2 lc rgb "blue" lw 2
set style line 2 lt 2 lc rgb "orange" lw 2
set style line 4 lt 2 lc rgb "green" lw 2
set style line 5 lt 2 lc rgb "purple" lw 2
set style line 6 lt 2 lc rgb "black" lw 2





set style line 1  lc rgb '#0025ad' lt 1 lw 1.5 # --- blue
set style line 2  lc rgb '#0042ad' lt 2 lw 1.5 #      .
set style line 3  lc rgb '#0060ad' lt 3 lw 1.5 #      .
set style line 4  lc rgb '#007cad' lt 4 lw 1.5 #      .
set style line 5  lc rgb '#0099ad' lt 5 lw 1.5 #      .
set style line 6  lc rgb '#00ada4' lt 6 lw 1.5 #      .
set style line 7  lc rgb '#00ad88' lt 7 lw 1.5 #      .
set style line 8  lc rgb '#00ad6b' lt 8 lw 1.5 #      .
set style line 9  lc rgb '#00ad4e' lt 9  lw 1.5 #      .
set style line 10 lc rgb '#00ad31' lt 10 lw 1.5 #      .
set style line 11 lc rgb '#00ad14' lt 11 lw 1.5 #      .
set style line 12 lc rgb '#09ad00' lt 12 lw 1.5 # --- green

