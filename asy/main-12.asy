if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-12";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.outformat = "pdf";
import geometry;

size(4.1cm);
triangle t = triangleAbc(60, 3, 4); draw(t, linewidth(bp));
point H = orthocentercenter(t);

triangle t_1 = pedal(t, H); draw(t_1);

draw(segment(t.VA, t_1.VA), grey);
draw(segment(t.VB, t_1.VB), grey);
draw(segment(t.VC, t_1.VC), grey);

perpendicularmark(t.AB, line(t.VC, t_1.VC), size=5, deepgreen);
perpendicularmark(t.CB, line(t.VA, t_1.VA), size=5, deepgreen, quarter=3);
perpendicularmark(t.AC, line(t.VB, t_1.VB), size=5, deepgreen, quarter=4);

markangle(n = 1, point(t.VB), point(t_1.VC), point(t_1.VA), radius=10, brown);
markangle(n = 1, point(t_1.VB), point(t_1.VC), point(t.VA), radius=8, brown);

markangle(n = 2, point(t.VA), point(t_1.VB), point(t_1.VC), radius=6, brown);
markangle(n = 2, point(t_1.VA), point(t_1.VB), point(t.VC), radius=8, brown);

markangle(n = 3, point(t.VC), point(t_1.VA), point(t_1.VB), radius=4, brown);
markangle(n = 3, point(t_1.VC), point(t_1.VA), point(t.VB), radius=2, brown);
