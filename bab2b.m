syms f(x1,x2);
f(x1,x2)=4*x1^3-x1^2+x2^3-5*x2^2-8*x2;
figure(1);
fsurf(f);
figure(2);
fcontour(f,[-100, 100]);