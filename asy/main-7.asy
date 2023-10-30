if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-7";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.outformat = "pdf";
import geometry;

size(4.1cm);
triangle t = triangleabc(7, 11, 10); draw(t, linewidth(bp));
circle omega = circle(t); draw(omega);
point H = orthocentercenter(t);
point O = circumcenter(t);
point M = midpoint(t.AB);

draw(segment(t.VA, t.VB), StickIntervalMarker(2, 2, size=5));
perpendicularmark(t.AB, line(O, M), deepgreen, size=5);

draw(segment(O, M), gray, StickIntervalMarker(1, 1, size=5));
draw(segment(t.VC, H), gray, StickIntervalMarker(2, 1, size=5));
dot(midpoint(segment(t.VC, H)));


dot(H, filltype=FillDraw(fillpen=deepgreen, drawpen=brown));
dot(O, filltype=FillDraw(fillpen=white, drawpen=black));
