if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="main-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.outformat = "pdf";
import geometry;
pen hpen = blue+6;

size(12.3cm);
triangle t=triangleabc(18.5, 15, 19.5);
draw(t, linewidth(1.4*bp));
point P = 0.47*t.B+0.3*(t.C-t.B); dot(P, orange+4);
point Q = isogonalconjugate(t, P); dot(Q, brown+4);

point P_a = projection(t.BC)*P; segment p_a = segment(P, P_a); draw(p_a, grey); //dot(P_a, royalblue);
point P_b = projection(t.AC)*P; segment p_b = segment(P, P_b); draw(p_b, grey); //dot(P_b, royalblue);
point P_c = projection(t.AB)*P; segment p_c = segment(P, P_c); draw(p_c, grey); //dot(P_c, royalblue);

point Q_a = projection(t.BC)*Q; segment q_a = segment(Q, Q_a); draw(q_a, grey); //dot(Q_a, deepgreen);
point Q_b = projection(t.AC)*Q; segment q_b = segment(Q, Q_b); draw(q_b, grey); //dot(Q_b, deepgreen);
point Q_c = projection(t.AB)*Q; segment q_c = segment(Q, Q_c); draw(q_c, grey); //dot(Q_c, deepgreen);

perpendicularmark(t.AB, p_c, size=10, blue); perpendicularmark(t.AB, q_c, size=10, deepgreen);
perpendicularmark(t.BC, p_a, size=10, blue); perpendicularmark(t.BC, q_a, size=10, deepgreen);
perpendicularmark(reverse(t.AC), p_b, size=10, blue); perpendicularmark(reverse(t.AC), q_b, size=10, deepgreen);

circle G = circle(P_a, P_b, P_c); draw(G, 1.1*bp+mediumred+dashed);

segment pa = segment(t.VA, P); draw(pa, orange);
segment pb = segment(t.VB, P); draw(pb, orange);
segment pc = segment(t.VC, P); draw(pc, orange);

segment qa = segment(t.VA, Q); draw(qa, brown);
segment qb = segment(t.VB, Q); draw(qb, brown);
segment qc = segment(t.VC, Q); draw(qc, brown);

markangle(n = 1, line(pa), line(t.AC), radius=1.3cm, orange);
markangle(n = 1, line(t.AB), line(qa), radius=1cm, brown);

markangle(n = 2, rotate(180)*line(t.AC), line(pc), radius=1.3cm, orange);
markangle(n = 2, line(qc), line(t.BC), radius=1cm, brown);

markangle(n = 3, line(t.BC), line(qb), radius=1.3cm, brown);
markangle(n = 3, line(pb), line(t.AB), radius=1.4cm, orange);

triangle t_P = pedal(t, P); draw(t_P, royalblue);
triangle t_Q = pedal(t, Q); draw(t_Q, deepgreen);

//segment pq = segment(P, Q);
//point M = midpoint(pq); dot(M, purple); draw(pq, purple, //StickIntervalMarker(2,1, size=10));

//point M_a = projection(t.BC)*M; segment m_a = segment(M, M_a); //draw(m_a, grey); dot(M_a, purple);
//point M_b = projection(t.AC)*M; segment m_b = segment(M, M_b); //draw(m_b, grey); dot(M_b, purple);
//point M_c = projection(t.BA)*M; segment m_c = segment(M, M_c); //draw(m_c, grey); dot(M_c, purple);

//perpendicularmark(t.AB, m_c, size=10, purple); //perpendicularmark(reverse(t.AC), m_b, size=10, purple);
//perpendicularmark(t.BC, m_a, size=10, purple);

//draw(circle(M_a, length(segment(P_a, Q_a)/2)), dashed + brown);
//draw(circle(M_b, length(segment(P_b, Q_b)/2)), dashed + brown);
//draw(circle(M_c, length(segment(P_c, Q_c)/2)), dashed + brown);
