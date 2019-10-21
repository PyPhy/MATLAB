tic
clear all
close all
clc
disp('-----------------------------------------------------------------------------------')
disp('----------------------------------FRACTAL GEOMETRY---------------------------------')
disp('By--DIVYANG R PRAJAPATI------------------------------------------------------------')
disp('-----------------------------------------------------------------------------------')

% magic angles are 137.3, 137.4, 137.5, 137.6
% n is the loop number
% c is the constant
magic_ang=input('Enter the magic angle: ');
n=input('Enter the n: ');
c=input('Enter the c: ');

ang=deg2rad(magic_ang);
counter=0;
figure('color',[1 1 1])
hold on
axis equal
axis square
axis([-6 6 -6 6]);
axis off
title('S u n f l o w e r','LineWidth',4,'fontweight','b')
for i=0:n
    counter=counter+1;
    phi(counter)=i*ang;
    r(counter)=c*sqrt(i);
    [x(counter) y(counter)]=pol2cart(phi(counter),r(counter));
    plot(x(counter),y(counter),'o','MarkerFaceColor','y','MarkerEdgeColor','k');
    pause(0.00001);
end
hold off

% Enter the magic angle: 137.3
% Enter the n: 999
% Enter the c: 0.15

disp('-----------------------------------------------------------------------------------')
disp('-------------------------------------THANK YOU-------------------------------------')
disp('-----------------------------------------------------------------------------------')
toc;