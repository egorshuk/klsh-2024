if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="solution-18";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.outformat = "pdf";
import geometry;
pen hpen = blue+5;

size(12cm, 6cm);
point O = (2, 0);
circle omega = circle(O, 1.7); draw(omega);
point P = (-2.5, 2); dot("$P$", P, dir(70));

point A_2 = angpoint(omega, 40); dot("$A_2$", A_2, dir(40));
point A_1 = intersectionpoints(omega, line(P, A_2))[1]; dot("$A_1$", A_1, dir(100));
draw(line(P, A_2));

point B_2 = angpoint(omega, -80); dot("$B_2$", B_2, dir(-100));
point B_1 = intersectionpoints(omega, line(P, B_2))[1]; dot("$B_1$", B_1, dir(-140));
draw(line(P, B_2));

draw(B_1--A_2, red+dashed); draw(B_2--A_1, red+dashed);

markangle(n = 1, P, A_2, B_1, radius=25, blue);
markangle(n = 1, A_1, B_2, P, radius=25, blue);

markangle(n = 2, B_2, P, A_2, radius=20, blue+bp);

draw(box((-3,-2), (4, 2.3)), invisible);
