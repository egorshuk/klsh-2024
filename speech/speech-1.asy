if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="speech-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.outformat = "pdf";
import geometry;

size(16cm);
triangle tri = triangleabc(8, 7, 8.5);
point H = orthocentercenter(tri);

line t = line(H, 27); draw(t, red); line l = line(H, 117); draw(l, orange);

point T_a = intersectionpoint(t, tri.BC);
point T_b = intersectionpoint(t, tri.AC);
point T_c = intersectionpoint(t, tri.BA);

point L_a = intersectionpoint(l, tri.BC);
point L_b = intersectionpoint(l, tri.AC);
point L_c = intersectionpoint(l, tri.BA);

draw(line(tri.VA, T_c));
draw(line(tri.VC, L_a));
draw(segment(tri.VA, tri.VC));

point M_a = midpoint(segment(L_a, T_a));
point M_b = midpoint(segment(L_b, T_b));
point M_c = midpoint(segment(L_c, T_c));

draw(segment(L_a, T_a), cyan, StickIntervalMarker(2, 2, size=8));
draw(segment(L_b, T_b), cyan, StickIntervalMarker(2, 1, size=6));
draw(segment(L_c, T_c), cyan, StickIntervalMarker(2, 3, size=8));

perpendicularmark(l, t, deepgreen, size=10, quarter=3);

draw(line(M_a, M_c), dashed+brown);

dot(T_a, deepgreen); dot(T_b, deepgreen); dot(T_c, deepgreen);
dot(L_a, brown); dot(L_b, brown); dot(L_c, brown);
dot(M_a); dot(M_b); dot(M_c);
dot(H, 5+deepgreen);

draw(box((-4, -1), (9.5, 12.5)), invisible);
