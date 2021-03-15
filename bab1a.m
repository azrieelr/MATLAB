syms f(x1,x2);
f(x1,x2)=16*x1^2+8*x2^2+20*x1*x2-15*x1+20*x2;
figure(1);
fsurf(f);
figure(2);
fcontour(f,[-100, 100]);