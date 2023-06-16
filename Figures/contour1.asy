import graph;

size(400);
real n = 6;

path upperSemicircle = arc((0,0), 1, 0, 180);
path lowerSemicircle = arc((0,0), 1, 180, 360);

xaxis(-n-1, n+1, above=true, Arrow);
yaxis(-n/2, n/2, above=true, Arrow);

// path contour = (-n, 0) -- reverse(lowerSemicircle) -- (n, 0);
path contour = (-n, 0) -- lowerSemicircle -- (n, 0);

draw(contour, linewidth(1) + red); // Draw the contour in red
// draw(upperSemicircle, dashed);
// draw(lowerSemicircle, dashed);

dot((-n, 0), red);
dot((n, 0), red);
dot((1, 0), red);
dot((-1, 0), red);
dot((0,-1),red);
dot((0,0),black);

label("$-n$", (-n, 0), N);
label("$-1$", (-1, 0), N);
label("$1$", (1, 0), N);
label("$-1$", (0,-1), SE);
label("$n$", (n, 0), N);

label("$\Gamma_n$", (n/2,0), N, red);


label("$\mathrm{Re}(z)$", (n+1, 0), S);
label("$\mathrm{Im}(z)$", (0, n/2), E);
