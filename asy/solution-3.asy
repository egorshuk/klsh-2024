if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="solution-3";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.outformat = "pdf";
import geometry;
pen hpen = blue+5;

size(3.5cm);
point O = (0, 0);
circle omega = circle(O, 1); draw(omega);

point A = angpoint(omega, 210);
point B = angpoint(omega, 100);
point C = angpoint(omega, 15);
point D = angpoint(omega, 320);

point P = intersectionpoints(circle(B, 2), line(A, B))[0];

draw(P--A--B--C--D--A);
markangle(n = 1, line(B, A), line(A, D), radius=12, red+dashed);
markangle(n = 1, B, C, D, radius=14, red);

markangle(n = 2, D, A, B, radius=14, blue);
