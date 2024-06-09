if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="solution-20";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.outformat = "pdf";
import geometry;
pen hpen = blue+5;

size(5.5cm);
point O_1 = (-1, 0); point O_2 = (3, 0); point O_3 = (0, 2.5);
circle omega_1 = circle(O_1, 1.5); circle omega_2 = circle(O_2, 1); circle omega_3 = circle(O_3, 1.6);
draw(omega_1, blue); draw(omega_2, blue); draw(omega_3, blue);

line O1O2 = radicalline(omega_1, omega_2); draw(O1O2, red+dashed);
line O1O3 = radicalline(omega_1, omega_3); draw(O1O3, red);
line O2O3 = radicalline(omega_3, omega_2); draw(O2O3, red);


dot(radicalcenter(omega_1, omega_2, omega_3), blue+4);

draw(box((-3.7, -2), (5, 4.4)), invisible);
