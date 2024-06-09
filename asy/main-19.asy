if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-19";
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
point O_1 = (0, 0); point O_2 = (4, 0);
circle omega_1 = circle(O_1, 1.5); circle omega_2 = circle(O_2, 1);
draw(omega_1); draw(omega_2);

line ra = radicalline(omega_2, omega_1);
point P = point(ra, 0.9);

line l_1 = tangents(omega_1, P)[1];
point T_1 = intersectionpoints(l_1, omega_1)[0]; dot(T_1);

line l_2 = tangents(omega_2, P)[0];
point T_2 = intersectionpoints(l_2, omega_2)[0]; dot(T_2);

draw(ra, red);
draw(line(O_1, O_2), gray);

draw(P--T_1, dashed+blue, StickIntervalMarker(1, 1, size=8));
draw(P--T_2, dashed+blue, StickIntervalMarker(1, 1, size=8));

dot("$O_1$", O_1, filltype=FillDraw(fillpen=white, drawpen=black), dir(120)); dot("$O_2$", O_2, filltype=FillDraw(fillpen=white, drawpen=black), dir(60));

dot(P);
perpendicularmark(line(O_1, O_2), ra, blue+dashed, size=8, quarter=1);

draw(box((-2, -2), (5, 2)), invisible);
