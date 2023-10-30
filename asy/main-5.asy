if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
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

size(4.1cm);
triangle t = triangleabc(9, 10, 12); draw(t, linewidth(bp));
point H = orthocentercenter(t);

circle Omega = circle(t); draw(Omega);
point M_a = midpoint(t.CB); dot(M_a);

draw(segment(t.VC, t.VB), linewidth(bp), StickIntervalMarker(2, 1, size=7));


point H_a = intersectionpoints(line(H, M_a), Omega)[0]; dot(H_a);

draw(segment(H, H_a), dashed, StickIntervalMarker(2,2, size=7));
dot(H, filltype=FillDraw(fillpen=deepgreen, drawpen=brown));
