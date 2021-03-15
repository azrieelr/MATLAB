%Program 2_6
%respon impulse
syms x(t) h(t) ya(t) yb(t) ys(t) dys(t) ddys(t) tau;
eps=-0.00001;
x(t)=heaviside(t);
dys(t)=diff(ys); ddys(t)=diff(dys);
ya(t)=dsolve(ys+5*dys+6*ddys==x,ys(eps)==0,dys(eps)==0); %mencari nilai output dengan memasukkan input
pretty(ya);
h(t)=dsolve(ys+5*dys+6*ddys==dirac(t),ys(eps)==0,dys(eps)==0); %mencari respon impulse
yb(t)=int(x(tau)*h(t-tau),tau,-inf,inf); %konvolusikan respon impulse dengan input
pretty(yb);
ezplot ("ya-yb");
