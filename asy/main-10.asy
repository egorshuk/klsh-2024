if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-10";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.outformat = "pdf";
import geometry;

size(4.1cm);
triangle t = triangleAbc(60, 6, 7.3); draw(t, linewidth(bp));
point O = circumcenter(t);

point H_a = foot(t.VA); draw(segment(t.VA, H_a), grey);
point H_b = foot(t.VB); draw(segment(t.VB, H_b), grey);
draw(segment(H_a, H_b));
perpendicularmark(t.CB, line(t.VA, H_a), deepgreen, size=5, quarter=4);
perpendicularmark(t.AC, line(t.VB, H_b), deepgreen, size=5, quarter=3);

draw(segment(t.VC, O));
perpendicularmark(line(t.VC, O), line(H_a, H_b), dashed+brown, size=5, quarter=3);

dot(O, filltype=FillDraw(fillpen=white, drawpen=black));
