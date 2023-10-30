if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-4";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.outformat = "pdf";
import geometry;

size(4.1cm);
triangle t = triangleabc(11, 14, 15.5); draw(t, linewidth(bp));
circle omega = circle(t); draw(omega);
point H = orthocentercenter(t);

point B_1 = intersectionpoints(altitude(t.VB), omega)[1]; dot(B_1);
point C_1 = intersectionpoints(altitude(t.VC), omega)[0]; dot(C_1);

point B_2 = foot(t.VB); point C_2 = foot(t.VC); dot(B_2); dot(C_2);

draw(segment(H, B_1), dashed+grey, StickIntervalMarker(2, 2, size=5));
draw(segment(H, C_1), dashed+grey, StickIntervalMarker(2, 1, size=5));

dot(H, filltype=FillDraw(fillpen=deepgreen, drawpen=brown));
