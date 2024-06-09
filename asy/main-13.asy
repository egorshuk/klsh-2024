if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-13";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.outformat = "pdf";
import geometry;
pen hpen = blue+6;

size(4.9cm, 4cm);
triangle t = triangleAbc(70, 7, 11); draw(t, linewidth(bp)); label(t);
point H = orthocentercenter(t);
point O = circumcenter(t);

draw(segment(t.VA, H));
draw(segment(t.VC, O), red);

dot(H, hpen);
dot(O, filltype=FillDraw(fillpen=white, drawpen=black));
