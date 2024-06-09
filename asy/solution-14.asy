if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="solution-14";
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
triangle t = triangleabc(6, 5, 6.2); draw(t, linewidth(bp)); label(t);
point A_1 = foot(t.VA); point B_1 = foot(t.VB);

draw(segment(t.VA, A_1), grey); perpendicularmark(t.BC, line(t.VA, A_1), blue, size=7);
draw(segment(t.VB, B_1), grey); perpendicularmark(t.AC, line(t.VB, B_1), blue, size=7, quarter=3);

draw(segment(A_1, B_1), red);

dot("$A_1$", A_1, E+0.5N); dot("$B_1$", B_1, W+0.5N);
