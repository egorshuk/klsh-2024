if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-9";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.outformat = "pdf";
import geometry;
pen hpen = blue+5;

size(5cm, 4cm);
triangle t = triangleabc(9, 11, 10); draw(t, linewidth(bp));
circle abc = circle(t); draw(abc);
point H = orthocentercenter(t);

draw(circle(point(t.VC), point(t.VB), H), dashed+red);
dot(H, hpen);
