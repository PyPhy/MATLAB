clear all
close all
clc
disp('-----------------------------------------------------------------------------------')
disp('--------------------------------SPHERICAL HARMONICS--------------------------------')
disp('By--DIVYANG R PRAJAPATI------------------------------------------------------------')
disp('-----------------------------------------------------------------------------------')

%% input part :-
% in the input is taken. "l" is Azimuthal quantum number and "m" is Magnetic quantum number
%%
l=input('Azimuthal quantum number "l": ');
if l<0
    error('"l" can not be a negative number')
end
m=input('Magnetic quantum number "m": ');
if m>l || m<(-l)
    error('quntum number "m" belong to "[-l,l]"')
end

%% cosnstants :-
% "phi" and "tta" are angles in spherical co-ordinate system
% "phi" is from 0 to 2*pi
% "tta" is from -pi to pi
% "X","Y" and "Z" are in cartesian co-ordinate system
% NOTE: radius "R" is ignored because it vanishes in each equation.
%%
phi=linspace(0,2*pi,99);
tta=linspace(-pi/2,pi/2,99);
[tta phi]=meshgrid(tta,phi);
%
X=sin(tta).*cos(phi);
Y=sin(tta).*sin(phi);
Z=cos(tta);

%% HARMONICS :-
% the eqution of sherical harmonics are from-
% 1. Quantum mechanics by G. Aruldhas
% 2. https://en.m.wikipedia.org/wiki/Table_of_spherical_harmonics
%%
% l=0 harmonic
if l==0 && m==0
    Y_0_0=1/sqrt(4*pi);
    [x y z]=sph2cart(phi,tta,Y_0_0);
    
% l=1 harmonic    
elseif l==1 && m==0
    Y_1_0=sqrt(3/(4*pi)).*cos(tta);
    [x y z]=sph2cart(phi,tta,Y_1_0);
elseif l==1 && m==1
    Y_1_1=sqrt(3/(4*pi)).*sin(tta).*cos(phi);
    [x y z]=sph2cart(phi,tta,Y_1_1);
elseif l==1 && m==-1
    Y_1_n1=sqrt(3/(4*pi)).*sin(tta).*sin(phi);
    [x y z]=sph2cart(phi,tta,Y_1_n1);
    
% l=2 harmonic
elseif l==2 && m==0
    Y_2_0=sqrt(5/(16*pi)).*(3*((cos(tta)).^2)-1);
    [x y z]=sph2cart(phi,tta,Y_2_0);
elseif l==2 && m==1
    Y_2_1=sqrt(15/(4*pi)).*sin(tta).*cos(tta).*cos(phi);
    [x y z]=sph2cart(phi,tta,Y_2_1);
elseif l==2 && m==-1
    Y_2_n1=sqrt(15/(4*pi)).*sin(tta).*cos(tta).*sin(phi);
    [x y z]=sph2cart(phi,tta,Y_2_n1);
elseif l==2 && m==2
    Y_2_2=sqrt(15/(16*pi)).*((sin(tta)).^2).*cos(2*phi);
    [x y z]=sph2cart(phi,tta,Y_2_2);
elseif l==2 && m==-2
    Y_2_n2=sqrt(15/(16*pi)).*((sin(tta)).^2).*sin(2*phi);
    [x y z]=sph2cart(phi,tta,Y_2_n2);

% now onwards the equations of spherical harmonics are from wikipedia
% l=3 harmonic
elseif l==3 && m==-3
    Y_3_n3=(1/4)*(sqrt(35/(2*pi)))*((sin(tta)).^3).*(sin(phi)).*(4*((cos(phi)).^2)-1);
    [x y z]=sph2cart(phi,tta,Y_3_n3);
elseif l==3 && m==-2
    Y_3_n2=(1/8)*(sqrt(105/pi))*(sin(tta)).*(sin(2*tta)).*(sin(2*phi));
    [x y z]=sph2cart(phi,tta,Y_3_n2);
elseif l==3 && m==-1
    Y_3_n1=(1/4)*(sqrt(21/(2*pi)))*sin(tta).*sin(phi).*(5*((cos(tta)).^2)-1);
    [x y z]=sph2cart(phi,tta,Y_3_n1);
elseif l==3 && m==0
    Y_3_0=(1/4)*(sqrt(7/pi))*cos(tta).*(5*((cos(tta).^2))-3);
    [x y z]=sph2cart(phi,tta,Y_3_0);
elseif l==3 && m==1
    Y_3_1=(1/4)*(sqrt(21/(2*pi)))*sin(tta).*cos(phi).*(5*((cos(tta)).^2)-1);
    [x y z]=sph2cart(phi,tta,Y_3_1);
elseif l==3 && m==2
    Y_3_2=(1/8)*(sqrt(105/pi))*(sin(tta)).*(sin(2*tta)).*(cos(2*phi));
    [x y z]=sph2cart(phi,tta,Y_3_2);
elseif l==3 && m==3
    Y_3_3=(1/4)*(sqrt(35/(2*pi)))*((sin(tta)).^3).*cos(phi).*(4*((cos(phi)).^2)-3);
    [x y z]=sph2cart(phi,tta,Y_3_3);
    
% l=4 harmonic
elseif l==4 && m==-4
%   Y_4_n4=(3/16)*sqrt(35/pi)*((sin(tta)).^4).*sin(4*phi);
    Y_4_n4=(3/4)*sqrt(35/pi)*(X.*Y.*(X.^2-Y.^2));
    [x y z]=sph2cart(phi,tta,Y_4_n4);
elseif l==4 && m==4
    Y_4_4=(3/16)*sqrt(35/pi)*(((X.^2).*(X.^2-3*Y.^2))-((Y.^2).*(3*X.^2-Y.^2)));
    [x y z]=sph2cart(phi,tta,Y_4_4);
elseif l==4 && m==-3
    Y_4_n3=(3/4)*sqrt(35/(2*pi))*((3*X.^2-Y.^2).*Y.*Z);
    [x y z]=sph2cart(phi,tta,Y_4_n3);
elseif l==4 && m==3
    Y_4_3=(3/4)*sqrt(35/(2*pi))*((X.^2-3*Y.^2).*X.*Z);
    [x y z]=sph2cart(phi,tta,Y_4_3);
elseif l==4 && m==-2
    Y_4_n2=(3/8)*sqrt(5/pi)*(sin(tta).^2).*sin(2*phi).*(7*((cos(tta)).^2)-1);
    [x y z]=sph2cart(phi,tta,Y_4_n2);
elseif l==4 && m==2
    Y_4_2=(3/8)*sqrt(5/pi)*(sin(tta).^2).*cos(2*phi).*(7*((cos(tta)).^2)-1);
    [x y z]=sph2cart(phi,tta,Y_4_2);
elseif l==4 && m==-1
    Y_4_n1=(3/4)*sqrt(5/(2*pi)).*(Y.*Z.*(7*(Z.^2)-3));
    [x y z]=sph2cart(phi,tta,Y_4_n1);
elseif l==4 && m==1
    Y_4_1=(3/4)*sqrt(5/(2*pi)).*(X.*Z.*(7*(Z.^2)-3));
    [x y z]=sph2cart(phi,tta,Y_4_1);
elseif l==4 && m==0
    Y_4_0=(3/16)*sqrt(1/pi).*(35*(Z.^4)-30*(Z.^2)+3);
    [x y z]=sph2cart(phi,tta,Y_4_0);
end

%% plotting :-

figure('color',[1 1 1])
surfc(x,y,z)
xlabel('X')
ylabel('Y')
zlabel('Z')
axis equal
axis off
shading interp
str=sprintf('l = %d and m = %d',l,m);
title(str);
camlight
colorbar
disp('-----------------------------------------------------------------------------------')
disp('-------------------------------------THANK YOU-------------------------------------')
disp('-----------------------------------------------------------------------------------')
