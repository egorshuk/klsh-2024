if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
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
pen hpen = blue+6;

size(5cm, 4cm);
triangle t = triangleabc(11, 9, 12); draw(t, linewidth(bp));
point H = orthocentercenter(t);
point O = circumcenter(t);

draw(segment(t.VA, H));
draw(segment(t.VA, O));

draw(segment(t.VC, H));
draw(segment(t.VC, O));

markangle(n = 1, line(t.AB), line(t.VA, O), radius=35, red);
markangle(n = 1, line(t.VA, H), line(t.AC), radius=30, red+dashed);

markangle(n = 2, line(t.VC, O), line(t.BC), radius=30, dashed+blue);
markangle(n = 2, rotate(180)*line(t.AC), line(t.VC, H), radius=30, blue);

dot(H, hpen);
dot(O, filltype=FillDraw(fillpen=white, drawpen=black));
