import graph;

size(300);
real y = 0.9;
real x = 1.5;

pen inv = invisible;
pen red_pen = linewidth(1.0pt) + red;
pen blue_pen = linewidth(1.0pt) + blue;
pen a = linewidth(1.0pt);

labely("$O(1)$",(0,y));
labely("$O(\epsilon_{\textrm{machine}})$",(0,0));

draw((0.0,0.0)--(0.0,y+0.2),inv);
draw((0,y)--(x,y),inv);
draw((0,y)--(x-0.4,y),red_pen);
draw((x-0.4,y)--(x-0.4,0.0),red_pen);
draw((x-0.4,0.0)--(x-0.3,0.0),red_pen);

draw((0,y)--(x-1.1,0.0),blue_pen);
draw((x-1.1,0.0)--(x-1.0,0.0),blue_pen);



xaxis(shift(-30,-2)*Label("Work"),Bottom,a, EndArrow);
yaxis(shift(0,-10)*Label("Error (log scale)"),Left,a,EndArrow);

labelx(Label("\textbf{direct}"), ((x-0.4)/2,y+0.13),align=S);
labelx(Label("\textbf{iterative}"), ((x-0.65)/2,+0.4),align=N);

labelx(Label("$O(\mathcal{D}^3)$"), (x-0.4,0.0),align=S,red);

dot((x-0.25,0.0), linewidth(0.5pt) + red, Fill(red));
dot((x-0.2,0.0), linewidth(0.5pt) + red, Fill(red));
dot((x-0.15,0.0),linewidth(0.5pt) + red, Fill(red));

dot((x-0.95,0.0), linewidth(0.5pt) + blue, Fill(blue));
dot((x-0.9,0.0), linewidth(0.5pt) + blue, Fill(blue));
dot((x-0.85,0.0),linewidth(0.5pt) + blue, Fill(blue));
