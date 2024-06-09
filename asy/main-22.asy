if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-22";
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
point A = (-7, 0); point C = (15, 0);
circle omega_a = circle(A, 4); circle omega_c = circle(C, 6);
draw(Label("$\omega_a$", Relative(0.375)), omega_a, red+dashed+0.8*bp); draw(Label("$\omega_c$", Relative(0.1)), omega_c, blue+dashed+0.8*bp);

point B = (3, 11); point D = (3, -5);
draw(line(A, C), gray);
draw(line(B, D), gray);

draw(A--B--C--D--A);

perpendicularmark(line(A, C), line(B, D), blue, size=10);

dot("$A$", A, dir(225)); dot("$C$", C, dir(315));
dot("$B$", B, dir(30)); dot("$D$", D, dir(330));
