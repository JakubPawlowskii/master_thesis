import graph;

size(300);
real n = 6;

path lowerSemicirclesmall = arc((0,0), 1, 180, 360);
path lowerSemicircle = arc((0,0), n, 180, 360);
path upperSemicircle = arc((0,0), n, 0, 180);

xaxis(-n-1, n+1, above=true, Arrow);
yaxis(-n-1, n+1, above=true, Arrow);

//draw the contour with arrows

path contour = (-n, 0) -- lowerSemicirclesmall -- (n, 0);

draw(contour, linewidth(1) + red); // Draw the contour in red
draw(upperSemicircle,linewidth(1) +  blue);
draw(lowerSemicircle,linewidth(1) +  green );

// pen for drawing the arrows
DefaultHead.size=new real(pen p=currentpen) {return 4mm;};
add(arrow(contour,invisible,FillDraw(red),Relative(0.2))); 
add(arrow(contour,invisible,FillDraw(red),Relative(0.51))); 
add(arrow(contour,invisible,FillDraw(red),Relative(0.8))); 

add(arrow(upperSemicircle,invisible,FillDraw(blue),Relative(0.2)));
add(arrow(upperSemicircle,invisible,FillDraw(blue),Relative(0.51)));
add(arrow(upperSemicircle,invisible,FillDraw(blue),Relative(0.8)));

add(arrow(reverse(lowerSemicircle),invisible,FillDraw(green),Relative(0.2)));
add(arrow(reverse(lowerSemicircle),invisible,FillDraw(green),Relative(0.51)));
add(arrow(reverse(lowerSemicircle),invisible,FillDraw(green),Relative(0.8)));



dot((-n, 0), red);
dot((n, 0), red);
dot((1, 0), red);
dot((-1, 0), red);
dot((0,-1),red);
dot((0,0),black);

label("$-n$", (-n, 0), NE);
label("$-1$", (-1, 0), N);
label("$1$", (1, 0), N);
label("$-1$", (0,-1), SE);
label("$n$", (n, 0), NW);

label("$\Gamma_n$", (n/2+1,0), N, red);




// point 1/4 of the way along the contour lowerSemicircle
pair z1 = relpoint(lowerSemicircle, 0.25);
label("$\Gamma_n^L$", z1, NE, green);

// point 3/4 of the way along the contour lowerSemicircle
pair z2 = relpoint(upperSemicircle, 0.75);
label("$\Gamma_n^U$", z2, NW, blue);



label("$\mathrm{Re}(z)$", (n+1, 0), S);
label("$\mathrm{Im}(z)$", (0, n+1), E);
