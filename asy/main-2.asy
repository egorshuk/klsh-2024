if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-2";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.outformat = "pdf";
import geometry;
pen hpen = blue+5;

size(9cm);
triangle t = triangleabc(9, 10, 11); draw(t, linewidth(bp));

point H_a = foot(t.VA); point H_b = foot(t.VB); point H_c = foot(t.VC);
point H = orthocenter(t);

draw(segment(t.VA, H_a), grey); draw(segment(t.VB, H_b), grey); draw(segment(t.VC, H_c), grey);

perpendicularmark(t.AB, line(t.VC, H_c), dashed + blue, size=10);
perpendicularmark(t.BC, line(t.VA, H_a), blue, size=10, quarter=1);
perpendicularmark(t.AC, line(t.VB, H_b), blue, size=10, quarter=3);

draw(circle(t.VC, H_a, H_b));
draw(H_a--H_b, grey);

markangle(n = 1, H_a, H, point(t.VC), radius=12, red);
markangle(n = 1, H_a, H_b, point(t.VC), radius=14, red);

clipdraw(circle(t.VA, H_a, H_b));

//draw(arc(circle(t.VA, H_a, H_b), -5, 185));

markangle(n = 1, H_a, point(t.VB), H_c, radius=16, red);

draw(circle(H, H_a, H_c), dashed+red+bp*0.7);
