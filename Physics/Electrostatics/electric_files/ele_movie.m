K=9*10^9;   %my first movie :)
x=-1.5:0.2:1.5;
y=-1.5:0.2:1.5;
[X Y]=meshgrid(x,y);
r=sqrt(X.^2+Y.^2);
figure('color',[0.999 1 0.9])
for Q=1:20
E=(K*Q)./r.^2;
surfc(X,Y,E);
F(abs(Q))=getframe(gcf);
end
movie(F,1)