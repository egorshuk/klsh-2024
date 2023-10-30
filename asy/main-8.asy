if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
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

size(4.1cm);
triangle t = triangleabc(7, 11, 10); draw(t, linewidth(bp));
circle abc = circle(t); draw(abc);
point H = orthocentercenter(t);

dot(H, filltype=FillDraw(fillpen=deepgreen, drawpen=brown));

draw(circle(point(t.VC), point(t.VB), H), dashed+brown);
