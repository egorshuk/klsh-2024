if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-6";
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
triangle t = triangleabc(9.6, 10.8, 12); draw(t, linewidth(bp));
point H = orthocentercenter(t);

circle Omega = circle(t); draw(Omega);
point M_a = midpoint(t.CB);

draw(segment(t.VC, t.VB), linewidth(bp), StickIntervalMarker(2, 1, size=7));


point H_a = intersectionpoints(line(H, M_a), Omega)[0];

dot(M_a); dot(H_a);
draw(segment(H, H_a), red+dashed, StickIntervalMarker(2,2, size=7));
dot(H, hpen);

//draw(box((-1, -1), (13, 11)), invisible);
