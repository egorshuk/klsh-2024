if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-15";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.outformat = "pdf";
import geometry;
pen hpen = blue+5;

size(12.7cm, 10cm);
triangle t = triangleabc(14.5, 18, 19.5); draw(t, linewidth(bp));
circle omega = circle(t);

point H = orthocentercenter(t);

point H_a = foot(t.VA); point H_b = foot(t.VB); point H_c = foot(t.VC);
point M_a = midpoint(t.BC); point M_b = midpoint(t.AC); point M_c = midpoint(t.AB);
point T_a = midpoint(segment(H, t.VA)); point T_b = midpoint(segment(H, t.VB)); point T_c = midpoint(segment(H, t.VC));

triangle t_1 = triangle(H_a, H_b, H_c);

draw(segment(t.VA, H_a), grey); draw(segment(t.VB, H_b), grey); draw(segment(t.VC, H_c), grey);
perpendicularmark(t.AB, altitude(t.VC), blue, size=10); perpendicularmark(t.AC, altitude(t.VB), blue, size=10, quarter=3); perpendicularmark(t.CB, altitude(t.VA), blue, size=10, quarter=4);

draw(segment(t.VA, t.VB), StickIntervalMarker(2, 1, size=8)); draw(segment(t.VA, t.VC), StickIntervalMarker(2, 2, size=8)); draw(segment(t.VC, t.VB), StickIntervalMarker(2, 3, size=8));

draw(segment(t.VA, H), grey, StickIntervalMarker(2, 3, blue, size=5)); draw(segment(H, t.VC), grey, StickIntervalMarker(2, 1, blue, size=5)); draw(segment(H, t.VB), grey, StickIntervalMarker(2, 2, blue, size=5));

draw(Label("$\omega_9$", Relative(0.375)), circle(t_1), red+dashed+0.8*bp);
draw(H_a--H_b--H_c--H_a); draw(M_a--M_b--M_c--M_a);

dot(H_a); dot(H_b); dot(H_c);
dot(M_a); dot(M_b); dot(M_c);
dot(T_a); dot(T_b); dot(T_c);


draw(segment(t.VA, M_a), grey); draw(segment(t.VB, M_b), grey); draw(segment(t.VC, M_c), grey);

draw(line(circumcenter(t), H), blue+0.8*bp+dashed);

dot(centroid(t));
dot("$O_9$", circumcenter(t_1), dir(0), red);
dot(circumcenter(t), filltype=FillDraw(fillpen=white, drawpen=black));
dot(H, blue+5);

draw(box((-1,-0.7), (10.5, 6.3)), invisible);
