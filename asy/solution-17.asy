if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="solution-17";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.outformat = "pdf";
import geometry;
pen hpen = blue+5;

size(6.3cm);
point A = (-5, 0); point B = (0, 6);
point C = (3.5, 0); point D = (0, 2.5);
draw(A--B--C--D--A, linewidth(bp));

point H = intersectionpoint(line(A, C), line(B, D)); dot(H);
draw(A--C, red); draw(B--H, red);

perpendicularmark(line(A, C), line(B, H), blue+dashed, size=10, quarter=2);

dot("$A$", A, W); dot("$B$", B, N); dot("$C$", C, E); dot("$D$", D, dir(150));
