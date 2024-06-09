if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-24";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.outformat = "pdf";
import geometry;
pen hpen = blue+5;

size(12cm, 9cm);
triangle t = triangleabc(24, 16, 23); draw(t, linewidth(bp)); label(t);
circle omega = incircle(t); draw(omega, red);
point M = intersectionpoints(omega, t.AB)[0];
point N = intersectionpoints(omega, t.BC)[0];
point P = intersectionpoint(line(M, N), bisector(t.VA));
draw(M--N, gray); draw(P--point(t.VC)); draw(point(t.VA)--P);

point M_b = midpoint(t.AC); dot(M_b);
point M_a = midpoint(t.CB); dot(M_a);

draw(M_a--M_b, blue+dashed);

draw(segment(t.VA, t.VC), StickIntervalMarker(2, 1, size=8));
draw(segment(t.VC, t.VB), StickIntervalMarker(2, 2, size=8));

markangle(n = 1, P, point(t.VA), point(t.VC), radius=24, red);
markangle(n = 1, point(t.VB), point(t.VA), P, radius=20, red);

perpendicularmark(bisector(t.VA), line(P, t.VB), blue+dashed, size=12, quarter=2);

dot("$M$", M, dir(-60));
dot("$N$", N, dir(30));
dot("$P$", P, dir(-60));
dot(incenter(t), filltype=FillDraw(fillpen=white, drawpen=black));
