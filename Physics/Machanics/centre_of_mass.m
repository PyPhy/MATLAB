N=input('enter the number of objects (positive integer): ');
for i=1:N
x(i)=input(['Enter the X coordinate in m for object ',int2str(i),': ']);
y(i)=input(['Enter the Y coordinate in m for object ',int2str(i),': ']);
z(i)=input(['Enter the Z coordinate in m for object ',int2str(i),': ']);
M(i)=input(['Enter the mass of object ',int2str(i),': ']);
end
%%%%%%%%%%%%%
r=[x;y;z];
m=[M;M;M];
%find the centre of mass due to each object
rcm=sum(r.*m,2)./sum(M,2)
%%%%%%%%%%%%%
figure(1);
plot3(0,0,0,'k');
hold on;
for i=1:N
plot3(x(i),y(i),z(i),'o','MarkerSize',10,'MarkerFaceColor','b');
line([rcm(1),x(i)],[rcm(2),y(i)],[rcm(3),z(i)],'LineStyle',':');
end;
text(1.1*rcm(1),1.1*rcm(2),1.1*rcm(3),'centre of mass','color','r');
plot3(rcm(1),rcm(2),rcm(3),'o','MarkerSize',10,'MarkerFaceColor','r');
grid on
hold off;
axis equal;
xlabel('x');
ylabel('y');
zlabel('z');
title('centre of mass from',int2str(N),'-point objects');