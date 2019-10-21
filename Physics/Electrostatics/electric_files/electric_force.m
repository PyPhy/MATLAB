EPS0=8.8542*10^(-12);
N=input('enter the number of charges (positive integer): ');
for i=1:N
x(i)=input(['Enter the X coordinate in m for charge ',int2str(i),': ']);
y(i)=input(['Enter the Y coordinate in m for charge ',int2str(i),': ']);
z(i)=input(['Enter the Z coordinate in m for charge ',int2str(i),': ']);
Q(i)=input(['Enter the charge in C for charge ',int2str(i),': ']);
end
disp('Properties of the point at which the force is calculated');
xp=input('Enter the X coordinate in m : ');
yp=input('Enter the Y coordinate in m : ');
zp=input('Enter the Z coordinate in m : ');
Qp=input('Enter the "target" charge in C: ');
%%%
r=sqrt((xp-x).^2+(yp-y).^2+(zp-z).^2);
ux=(xp-x)./r;
uy=(yp-y)./r;
uz=(zp-z)./r;
uVec=[ux;uy;uz];
%find the force due to each charge
F=(ones(3,1)*(Qp*Q./(4*pi*EPS0*r.^2))).*uVec;
%where F represents a 3×N matrix with elemaenrs of each column being the cartesian components of one of the force vectors
%in order to obtain the components of the total force vector;all forces are summes victorially
%Ftot is the column vector obtainend by adding up all columns of the matrix F
Ftot=sum(F,2);
Fmag=vectorMag(Ftot);
Fuv=(Ftot/Fmag)';
%the results are displayes as:
fprintf(['Magnitude of the resultant force at point P is %e N. \n'],Fmag);
disp('Unit vector of the resultant force :');
disp(Fuv);
%finally we plot individual forces on the "target" charge due to N "source" charges in blue and the total force in red
figure(1);
plot3(0,0,0,'k');
hold on;
for i=1:N
plot3(x(i),y(i),z(i),'o','MarkerSize',10,'MarkerFaceColor','b');
line([xp,x(i)],[yp,y(i)],[zp,z(i)],'LineStyle',':');
hold on;
vecPlot3D([xp yp zp],[xp yp zp]+F(:,i)',1/Fmag/100,'b',0);
hold on;
end;
vecPlot3D([xp yp zp],[xp yp zp]+Ftot',1/Fmag/100,'r',1);
text(1.1*xp,1.1*yp,1.1*zp,'Total electric force','color','r');
hold off;
axis equal;
xlabel('x');
ylabel('y');
zlabel('z');
title('Force from',int2str(N),'-point charges');