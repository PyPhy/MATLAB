clear all;
close all;
clc;
disp('-----------------------------------------------------------------------------------')
disp('------------------------------------Zigzag lines-----------------------------------')
disp('By--DIVYANG R PRAJAPATI------------------------------------------------------------')
disp('-----------------------------------------------------------------------------------')

% here rand(1)>0.5 is the probability 
% if its greater then 0.5 the 45' angle will be created
% else -45' angle

canvas = 50;
figure('color',[0 0 0])
hold on
for px = 0:1:canvas-1
    for py = 0:1:canvas-1
        if rand(1) > 0.5
            xi = [0 1];
            yi = [0 1];
            line(xi,yi,'color',[1 1 1],'linewidth',2);
            y = yi + py;
            x = xi + px;
            line(x,y,'color','b','linewidth',2);
        else
            xi = [0 1];
            yi = [1 0];
            line(xi,yi,'color',[1 1 1],'linewidth',2);
            y = yi + py;
            x = xi + px;
            line(x,y,'color',[1 1 1],'linewidth',2);
        end
    end
end
line([0 canvas],[0 0],'color',[1 1 1],'linewidth',5);
line([0 0],[0 canvas],'color',[1 1 1],'linewidth',5);
line([0 canvas],[canvas canvas],'color',[1 1 1],'linewidth',5);
line([canvas canvas],[0 canvas],'color',[1 1 1],'linewidth',5);
hold off
axis off
axis([0 canvas 0 canvas]);
axis square