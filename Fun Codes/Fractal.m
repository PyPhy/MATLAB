%% FRACTAL GEOMETRY
clear all
close all
clc
disp('-----------------------------------------------------------------------------------')
disp('----------------------------------FRACTAL GEOMETRY---------------------------------')
disp('By--DIVYANG R PRAJAPATI------------------------------------------------------------')
disp('-----------------------------------------------------------------------------------')
%% Input part
Diff=input('Angle Difference: ');
frc=input('Factorial paterns: ');
%%

%% Co-ordinate data of factral lines
% x_o and y_o are the co-ordinates of origin (0,0)
x_o=0;
y_o=0;
% x_f and y_f are the co-ordinates of the end point of line
x_ft(1)=0;
y_ft(1)=1;
% lnth is the length of line
lnth(1)=sqrt((x_ft(1)-x_o)^2+(y_ft(1)-y_o)^2);
angle(1)=pi/2;

for i=2:frc
    angle(i)=(angle(1))+(i-1)*(-Diff);
    x_ft(i)=(2*(lnth(i-1))/3)*cos(angle(i))+x_ft(i-1);
    y_ft(i)=(2*(lnth(i-1))/3)*sin(angle(i))+y_ft(i-1);
    lnth(i)=sqrt((x_ft(i)-x_ft(i-1))^2+(y_ft(i)-y_ft(i-1))^2);
end

%% Plotting
figure('color',[0 0 0]);
line([x_o x_ft(1)],[y_o y_ft(1)],'Color',[rand(1,1) rand(1,1) rand(1,1)],'LineWidth',2);
for i=2:frc
    line([x_ft(i-1) x_ft(i)],[y_ft(i-1) y_ft(i)],'Color',[rand(1,1) rand(1,1) rand(1,1)],'LineWidth',2);
end
axis off
axis square
axis equal
axis([-0.2 1.5 0 2])
title('FRACTAL GEOMETRY','Color',[1 1 1],'LineWidth',4)
angle=rad2deg(angle);

disp('-----------------------------------------------------------------------------------')
disp('-------------------------------------THANK YOU-------------------------------------')
disp('-----------------------------------------------------------------------------------')
