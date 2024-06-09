if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-16";
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
point A = (-5, 0); point B = (0, 4);
point C = (3, 0); point D = (0, -2);
draw(A--B--C--D--A, linewidth(bp));

draw(A--C, red); draw(B--D, red);

perpendicularmark(line(A, C), line(B, D), blue+dashed, size=10, quarter=1);

dot("$A$", A, W); dot("$B$", B, N); dot("$C$", C, E); dot("$D$", D, S);
dot(intersectionpoint(line(B, D), line(A, C)));
