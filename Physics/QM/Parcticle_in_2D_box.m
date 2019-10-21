clear all
close all
clc
disp('-----------------------------------------------------------------------------------')
disp('--------------------------------PARTICLE IN 1-D BOX--------------------------------')
disp('By--DIVYANG R PRAJAPATI------------------------------------------------------------')
disp('-----------------------------------------------------------------------------------')

%% input part :-
% "n" is energy quantum number
% "a" and 1'b" are length of the box
% "m" is mass of the particle
% "h" is planck constant
% "E" is energy of particle
%%
nx=input('Energy mode "nx": ');
ny=input('Energy mode "ny": ');

a=input('Lenght of the box: ');  % along x-axis
b=input('Breadth of the box: '); % along y-axis
m=9.10938215e-31;
h=6.62606896e-34;
E=((h^2)/(8*m))*((nx/a)^2+(ny/b)^2);
x=0:0.02:a;
y=0:0.02:b;
[x y]=meshgrid(x,y);

%%
% Here time "t" is from 0 to (h/(4*E)), so that we can see the effect of time clearly.
% here I take t=0:2:2*(h/(4*E)) to simulate it fast
% axis is choosen such that "x" is from 0 to L and "y" is from maximum
% amplitude to minimum amplitude you can change it according to max. amp.
%%
phy_r=sqrt(4/(a*b))*sin((nx*pi*x)/a).*sin((ny*pi*y)/b);
counter=0;

for t=0:10:3*(h/(4*E))  
    phy_t=cos((2*pi*E*t)/h);     % imaginary parts are ignored, real time component is exp(-iEt/h`)
    phy=phy_r.*phy_t;
    %
    surf(x,y,phy);
    axis([0 a 0 b -2 2]);
    axis square
    grid on
    title('Particle in 2D box')
    xlabel('x')
    ylabel('y')
    zlabel('wave function')
    shading interp
    drawnow
    counter=counter+1;
    %F(counter)=getframe;
    refresh
end

disp('-----------------------------------------------------------------------------------')
disp('-------------------------------------THANK YOU-------------------------------------')
disp('-----------------------------------------------------------------------------------')
