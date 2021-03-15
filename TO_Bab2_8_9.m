clear all
spacing = 0.25;
[X,Y] = meshgrid(0:spacing:4);
Z = (X-1).^2 + 4.*Y.^2;
[DX,DY] = gradient(Z,spacing);
figure(1)
quiver(X,Y,DX,DY,'b')
hold on
contour(X,Y,Z)
axis equal

x = [0:4];
y = (4-x)/2;
plot(x,y,'k')
hold on

for i=0:0.5:4
    %plot(i,-0.5*i+2,'or')
    text(i,-0.5*i+2.2,num2str((i/0.5)+1))
    hold on
end

grid on
hold off

clear all
spacing = 0.2;
[X,Y] = meshgrid(-3:spacing:3,-3:spacing:0);
Z = 4.*X.^2 + Y.^2;
[DX,DY] = gradient(Z,spacing);
figure(2)
quiver(X,Y,DX,DY,'b')
hold on
contour(X,Y,Z)
axis equal

x = [-2.9:0.1:2.9];
y = 1/4*x.^2 - 2;
plot(x,y,'k')
hold on

text(-(8^0.5)-0.1,-0.05,'1')
text(-2,-0.9,'2')
text(0,-1.9,'3')
text(2,-0.9,'4')
text((8^0.5),-0.05,'5')

hold off
