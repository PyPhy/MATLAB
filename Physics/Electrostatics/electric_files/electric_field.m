EPS0=8.8542*10^(-12);
N=input('enter the number of charges (positive integer): ');
for i=1:N
x(i)=input(['Enter the X coordinate in m for charge ',int2str(i),': ']);
y(i)=input(['Enter the Y coordinate in m for charge ',int2str(i),': ']);
z(i)=input(['Enter the Z coordinate in m for charge ',int2str(i),': ']);
Q(i)=input(['Enter the charge in C for charge ',int2str(i),': ']);
end
disp('Properties of the point at which the electric field is calculated');
xp=input('Enter the X coordinate in m : ');
yp=input('Enter the Y coordinate in m : ');
zp=input('Enter the Z coordinate in m : ');
%%%
r=sqrt((xp-x).^2+(yp-y).^2+(zp-z).^2);
ux=(xp-x)./r;
uy=(yp-y)./r;
uz=(zp-z)./r;
uVec=[ux;uy;uz];
%find the electric field due to each charge
E=(ones(3,1)*(Q./(4*pi*EPS0*r.^2))).*uVec;
%where E represents a 3×N matrix with elements of each column being the Cartesian components of one of the electric field vectors
%in order to obtain the components of the total electric field vector;all electric fields are summes victorially
%Etot is the column vector obtainend by adding up all columns of the matrix F
Etot=sum(E,2);
Emag=vectorMag(Etot);
Euv=(Etot/Emag)';
%the results are displayes as:
fprintf(['Magnitude of the resultant electric field at point P is %e V/m. \n'],Emag);
disp('Unit vector of the resultant electric field :');
disp(Euv);
%finally we plot individual electric fields on the "target" charge due to N "source" charges in blue and the total force in red
figure(1);
plot3(0,0,0,'k');
hold on;
for i=1:N
plot3(x(i),y(i),z(i),'o','MarkerSize',10,'MarkerFaceColor','b');
line([xp,x(i)],[yp,y(i)],[zp,z(i)],'LineStyle',':');
hold on;
vecPlot3D([xp yp zp],[xp yp zp]+E(:,i)',1/Emag/100,'b',0);
hold on;
end;
vecPlot3D([xp yp zp],[xp yp zp]+Etot',1/Emag/100,'r',1);
text(1.1*xp,1.1*yp,1.1*zp,'Total electric field','color','r');
hold off;
axis equal;
xlabel('x');
ylabel('y');
zlabel('z');
title('electric field from',int2str(N),'-point charges');