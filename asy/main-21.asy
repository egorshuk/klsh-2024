if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-21";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.outformat = "pdf";
import geometry;
pen hpen = blue+6;

size(5.5cm);
point O_1 = (-5, 0); point O_2 = (3, 0); point O_3 = (12, 0);
circle omega_1 = circle(O_1, 3); circle omega_2 = circle(O_2, 2); circle omega_3 = circle(O_3, 4);
draw(omega_1, blue); draw(omega_2, blue); draw(omega_3, blue);

line O1O2 = radicalline(omega_1, omega_2); draw(O1O2, red);
line O1O3 = radicalline(omega_1, omega_3); draw(O1O3, red+dashed);
line O2O3 = radicalline(omega_3, omega_2); draw(O2O3, red);

draw(box((0, -10), (2, 8)), invisible);
