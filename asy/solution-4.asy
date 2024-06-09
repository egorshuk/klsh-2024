if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="solution-4";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.outformat = "pdf";
import geometry;
pen hpen = blue+5;

size(4.8cm);
triangle t = triangle((point)(0, 3.7), (point)(-1.5, 0), (point)(3, 0));
draw(t, linewidth(bp));
point H = orthocentercenter(t);

draw(segment(t.VA, foot(t.VA)), grey); perpendicularmark(t.BC, line(t.VA, foot(t.VA)), blue, size=7);
draw(segment(t.VB, foot(t.VB)), grey); perpendicularmark(t.AC, line(t.VB, foot(t.VB)), blue, quarter=3, size=7);
draw(segment(t.VC, foot(t.VC)), grey); perpendicularmark(t.AB, line(t.VC, foot(t.VC)), blue, size=7);

dot("$H$", H, 1.2N + .7E, hpen);
dot("$O$", circumcenter(t), SE, filltype=FillDraw(fillpen=white, drawpen=black));
