if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-23";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.outformat = "pdf";
import geometry;
pen hpen = blue+5;

size(12cm, 9.8cm);
triangle t = triangleAbc(70, 7, 11); drawline(t, gray); draw(t, linewidth(bp));

circle omega = circle(t);
draw(omega);

point P = angpoint(omega, 45);
point Q = (-1, 6);


point P_a = intersectionpoint(pedal(t.BC, P), t.BC);
point P_b = intersectionpoint(pedal(t.AC, P), t.AC);
point P_c = intersectionpoint(pedal(t.AB, P), t.AB);

point Q_a = intersectionpoint(pedal(t.BC, Q), t.BC);
point Q_b = intersectionpoint(pedal(t.AC, Q), t.AC);
point Q_c = intersectionpoint(pedal(t.AB, Q), t.AB);

draw(segment(P, P_a), grey);
draw(segment(P, P_b), grey);
draw(segment(P, P_c), grey);

draw(segment(Q, Q_a), grey);
draw(segment(Q, Q_b), grey);
draw(segment(Q, Q_c), grey);

perpendicularmark(t.BC, line(P, P_a), blue, size=10, quarter=3);
perpendicularmark(t.AC, line(P, P_b), blue, size=10, quarter=3);
perpendicularmark(t.AB, line(P, P_c), blue, size=10, quarter=2);

perpendicularmark(t.BC, line(Q, Q_a), blue, size=10, quarter=2);
perpendicularmark(t.AC, line(Q, Q_b), blue, size=10, quarter=2);
perpendicularmark(t.AB, line(Q, Q_c), blue, size=10, quarter=1);

draw(line(P_a, P_c), red+dashed);
dot(P_a, red+3); dot(P_b, red+3); dot(P_c, red+3);
dot(P, red+4);
draw(Q_a--Q_b--Q_c--Q_a, red+dashed);
dot(Q_a, red+3); dot(Q_b, red+3); dot(Q_c, red+3);
dot(Q, red+4);
draw(box((-1.5, -5), (12, 9)), invisible);

//clip(currentpicture, box((-1.5, -5), (12, 9.5)), invisible);
