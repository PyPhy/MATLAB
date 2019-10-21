clear all
close all
clc
disp('-----------------------------------------------------------------------------------')
disp('-------------------------------MAXWELL BOLTZMAN MODEL------------------------------')
disp('By--DIVYANG R PRAJAPATI------------------------------------------------------------')
disp('-----------------------------------------------------------------------------------')
%%
L = input('Please enter the length of 1D box = ');
tic;
to = 0;
Vo = 0.5;
Xo = 0.5;
Y = 0;
counter=0;

figure('color',[1 1 1]);
for t = 0:0.01:20
    counter = counter + 1;
    X = Xo + Vo*(t-to);
    if X > L || X < 0
        disp(bang)
    end
    if (X >= L) || (X <= 0)
        Xo = X;
        Vo = -Vo;
        to = t;
    end
    plot(X,Y,'o','markersize',10,'markerfacecolor','b')
    axis([0 L -1 1]);
    grid on
    pause(0.001)
end

disp('-----------------------------------------------------------------------------------')
disp('-------------------------------------THANK YOU-------------------------------------')
disp('-----------------------------------------------------------------------------------')
toc;