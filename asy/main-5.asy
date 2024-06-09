if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-5";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.outformat = "pdf";
import geometry;
pen hpen = blue+6;

size(5cm, 4cm);
triangle t = triangleabc(11.1, 12.3, 11); draw(t, linewidth(bp));
circle omega = circle(t); draw(omega);
point H = orthocentercenter(t);

point B_1 = intersectionpoints(altitude(t.VB), omega)[1];
point A_1 = intersectionpoints(altitude(t.VA), omega)[1];

point B_2 = foot(t.VB); point A_2 = foot(t.VA);

draw(segment(H, B_1), dashed+red, StickIntervalMarker(2, 2, size=5));
draw(segment(H, A_1), dashed+red, StickIntervalMarker(2, 1, size=5));

perpendicularmark(t.AC, line(H, B_1), size=8, quarter=3, blue);
perpendicularmark(t.BC, line(H, A_1), size=7, quarter=2, blue);

dot(B_2); dot(A_2); dot(B_1); dot(A_1);
dot(H, hpen);

//draw(box((-2, 0), (14, 10.5)), invisible);
