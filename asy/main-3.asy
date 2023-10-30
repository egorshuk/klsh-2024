if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-3";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.outformat = "pdf";
import geometry;

size(4.1cm);
triangle t = triangleAbc(70, 7, 11); draw(t, linewidth(bp));
point H = orthocentercenter(t);

draw(segment(t.VA, foot(t.VA)), grey); perpendicularmark(t.BC, line(t.VA, foot(t.VA)), deepgreen, size=5);
draw(segment(t.VB, foot(t.VB)), grey); perpendicularmark(t.AC, line(t.VB, foot(t.VB)), deepgreen, quarter=3, size=5);
draw(segment(t.VC, foot(t.VC)), grey); perpendicularmark(t.AB, line(t.VC, foot(t.VC)), deepgreen, size=5);

dot("$H$", H, dir(24), filltype=FillDraw(fillpen=deepgreen, drawpen=brown));
