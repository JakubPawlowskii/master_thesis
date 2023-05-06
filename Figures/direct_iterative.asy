import graph;

size(300);
real y = 0.9;
real x = 1.5;

pen inv = invisible;
pen red = linewidth(1.0pt) + red;
pen blue = linewidth(1.0pt) + blue;
pen a = linewidth(1.0pt);

labely("$O(1)$",(0,y));
labely("$O(\epsilon_{\textrm{machine}})$",(0,0));

draw((0.0,0.0)--(0.0,y+0.2),inv);
draw((0,y)--(x,y),inv);
draw((0,y)--(x-0.4,y),red);
draw((x-0.4,y)--(x-0.4,0.0),red);



yaxis(shift(0,-10)*Label("Error (log scale)"),Left,a,EndArrow);
xaxis(shift(-10,0)*Label("Work"),Bottom,a, EndArrow);

labelx(Label("\textbf{direct}"), ((x-0.4)/2,y+0.13),align=S);
labelx(Label("$O(m^3)$"), (x-0.4,0.0),align=S,red);
// real hor(real x) {return x;}
// real ver(real x) {return ;}

// path g = graph(f,-1,1);
// draw(g);

// scale(true);

// yaxis("Norm of\ residual\ (log scale)", Rotate(90));

// yaxis("Susceptible bird survival",Left,RightTicks(trailingzero));
// yaxis(Right);

// labelx("$M_1$",M1);
// labelx("$M_2$",M2);

// draw((a,S2)--(M2,S2)--(M2,0),Dotted);
// draw((a,S1)--(M1,S1)--(M1,0),dashed);

// pen p=fontsize(10pt);

// real y3=0.043;
// path reduction=(M1,y3)--(M2,y3);

// draw(reduction,Arrow,TrueMargin(0,0.5*(linewidth(Dotted)+linewidth())));

// arrow(shift(-20,5)*Label(minipage("\flushleft{\begin{itemize}\item[1.]
// Estimate proportion of birds surviving at end of season\end{itemize}}",100),
//                          align=NNE),
//       (M1,S1),NNE,1cm,p,Arrow(NoFill));

// arrow(shift(-24,5)*Label(minipage("\flushleft{\begin{itemize}\item[2.]
// Read off initial mosquito abundance\end{itemize}}",80),align=NNE),
//       (M1,0),NE,2cm,p,Arrow(NoFill));

// arrow(shift(20,0)*Label(minipage("\flushleft{\begin{itemize}\item[3.]
// Determine desired bird survival for next season\end{itemize}}",90),align=SW),
//       (M2,S2),SW,arrowlength,p,Arrow(NoFill));

// arrow(shift(8,-15)*Label(minipage("\flushleft{\begin{itemize}\item[4.]
// Calculate required proportional reduction in mosquitoes\end{itemize}}",90),
//                          align=NW),
//       point(reduction,0.5),NW,1.5cm,p,Arrow(NoFill));