
#set line style  colors   
### Preferable numbers 7,3,16,19,20,13,18,5 

set xlabel 'Wave vector ({/Times-Bold k})'
set ylabel 'Energy (eV)'

conv = 33.4 ##THz to cm^-1
y1=-10
y2=20

#0.00000000 0.18288250 0.28846960 0.49964380
#0.00000000 0.16829330 0.25244000 0.37144140 0.51718770

b1=0.8660
b2=1.8660
b3=2.3660
b4=3.4841


x1=0
x2=b4 


set yrange[y1:y2]
set xrange[x1:x2]

set xtics ( "{L}" 0, "{/Symbol G}" b1,   "{X}" b2, "{W}" b3, "{/Symbol G}" b4  )
set x2tics ("[1/2,1/2,1/2]" 0, "[0,0,0]" b1,   "[1/2,0,1/2]" b2, "[1/2,1/4,3/4]" b3, "[0,0,0]" b4  )  font ",12"


Ef(x)= 6.0331

plot  'bands.dat.gnu' using 1:($2)  w l ls 2  notitle , Ef(x) w l ls 200 notitle


set arrow 1 from b1,y1  to b1,y2  lw 0.6   nohead   
set arrow 2 from b2,y1  to b2,y2  lw 0.6  nohead   
set arrow 3 from b3,y1  to b3,y2  lw 0.6  nohead   


set title 'Si electronic band structure' 

se te po color eps enhanced  font "Times, 16 "
se ou "siband.eps"
rep
se ou
q

