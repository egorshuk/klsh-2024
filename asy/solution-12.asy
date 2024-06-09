if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="solution-12";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.outformat = "pdf";
import geometry;
pen hpen = blue+5;

size(4.9cm, 4cm);
triangle t = triangleAbc(60, 6, 7.3); draw(t, linewidth(bp));
point O = circumcenter(t);

point H_a = foot(t.VA); draw(segment(t.VA, H_a), grey);
point H_b = foot(t.VB); draw(segment(t.VB, H_b), grey);
draw(segment(H_a, H_b));
perpendicularmark(t.CB, line(t.VA, H_a), blue, size=7, quarter=4);
perpendicularmark(t.AC, line(t.VB, H_b), blue, size=7, quarter=3);

draw(segment(t.VC, O), red);
perpendicularmark(line(t.VC, O), line(H_a, H_b), dashed+blue, size=7, quarter=3);

dot(O, filltype=FillDraw(fillpen=white, drawpen=black));
