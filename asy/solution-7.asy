if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="solution-7";
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
triangle t = triangleabc(11.8, 14, 11); draw(t, linewidth(bp));
point H = orthocentercenter(t);
point O = circumcenter(t);

circle Omega = circle(t); draw(Omega);
point M_a = midpoint(t.CB);

draw(segment(t.VC, t.VB), linewidth(bp), StickIntervalMarker(2, 1, size=7));

point H_a = intersectionpoints(line(H, M_a), Omega)[1];
draw(segment(H, H_a), gray, StickIntervalMarker(2,2, size=7));
draw(segment(t.VA, H_a), red);

dot(H_a); dot(M_a);
dot(H, hpen);
dot(O, filltype=FillDraw(fillpen=white, drawpen=black));

//draw(box((-2, -1), (13, 12)), invisible);
