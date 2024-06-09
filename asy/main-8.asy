if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-8";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.outformat = "pdf";
import geometry;
pen hpen = blue+5;

size(5cm, 4cm);
triangle t = triangleabc(9.5, 12.5, 12.2); draw(t, linewidth(bp));
circle omega = circle(t);
point H = orthocentercenter(t);
point O = circumcenter(t);
point M = midpoint(t.AB);

draw(segment(t.VA, t.VB), StickIntervalMarker(2, 2, size=5));
perpendicularmark(t.AB, line(O, M), blue, size=5);

draw(segment(O, M), gray, StickIntervalMarker(1, 1, size=5));
draw(segment(t.VC, H), red, StickIntervalMarker(2, 1, size=5));
dot(midpoint(segment(t.VC, H)));


dot(H, hpen);
dot(O, filltype=FillDraw(fillpen=white, drawpen=black));
