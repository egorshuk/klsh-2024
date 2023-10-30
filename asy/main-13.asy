if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-13";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.outformat = "pdf";
import geometry;

size(4.1cm);
triangle t = triangleAbc(60, 6, 8); draw(t, linewidth(bp)); label(t);

point A_1 = foot(t.VA); point B_1 = foot(t.VB);
dot("$A_1$", A_1, E+0.5N); dot("$B_1$", B_1, W+0.5N);

draw(segment(t.VA, A_1), grey); perpendicularmark(t.BC, line(t.VA, A_1), deepgreen, size=5);
draw(segment(t.VB, B_1), grey); perpendicularmark(t.AC, line(t.VB, B_1), deepgreen, size=5, quarter=3);

draw(segment(A_1, B_1));
