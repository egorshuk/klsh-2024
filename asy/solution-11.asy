if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="solution-11";
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
triangle t = triangleAbc(60, 3, 4); draw(t, linewidth(bp));
point H = orthocentercenter(t);

triangle t_1 = pedal(t, H); draw(t_1);

draw(segment(t.VA, t_1.VA), grey);
draw(segment(t.VB, t_1.VB), grey);
draw(segment(t.VC, t_1.VC), grey);

perpendicularmark(t.AB, line(t.VC, t_1.VC), size=7, blue);
perpendicularmark(t.CB, line(t.VA, t_1.VA), size=7, blue, quarter=3);
perpendicularmark(t.AC, line(t.VB, t_1.VB), size=7, blue, quarter=4);

markangle(n = 1, point(t.VB), point(t_1.VC), point(t_1.VA), radius=12, red);
markangle(n = 1, point(t_1.VB), point(t_1.VC), point(t.VA), radius=10, red);

markangle(n = 2, point(t.VA), point(t_1.VB), point(t_1.VC), radius=8, red);
markangle(n = 2, point(t_1.VA), point(t_1.VB), point(t.VC), radius=10, red);

markangle(n = 3, point(t.VC), point(t_1.VA), point(t_1.VB), radius=6, red);
markangle(n = 3, point(t_1.VC), point(t_1.VA), point(t.VB), radius=4, red);
