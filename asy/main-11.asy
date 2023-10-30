if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-11";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.outformat = "pdf";
import geometry;

size(4.1cm);
triangle t = triangleAbc(70, 7, 11); draw(t, linewidth(bp)); label(t);
point H = orthocentercenter(t);
point O = circumcenter(t);

draw(segment(t.VA, H));
draw(segment(t.VC, O));
draw(segment(t.VC, t.VB));

dot(H, filltype=FillDraw(fillpen=deepgreen, drawpen=brown));
dot(O, filltype=FillDraw(fillpen=white, drawpen=black));
