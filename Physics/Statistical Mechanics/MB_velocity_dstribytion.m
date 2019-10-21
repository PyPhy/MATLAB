tic;
clear all
close all
clc
disp('-----------------------------------------------------------------------------------')
disp('---------------------------------MAXWELL BOLTZMAN----------------------------------')
disp('By--DIVYANG R PRAJAPATI------------------------------------------------------------')
disp('-----------------------------------------------------------------------------------')

% source: wikipedia

%%
figure('color',[1 1 1]);
hold on
v = 0:0.1:2500;     % v>0
k = 1.3806504e-23;  % boltzmann constant
m = [4.002602 20.1797 39.948 83.80 131.29] * 1.66054e-27;     % mass of gas molecule
   %[He       Ne      Ar     Kr    Xe]
T = 273;             % room temperature in K
for i = 1:length(m)
    clr=[0.1+(0.8-0.1).*rand(1,1) 0.1+(0.8-0.1).*rand(1,1) 0.1+(0.8-0.1).*rand(1,1)];
    f = ((m(i)/(2*pi*k*T)).^(3/2)).*(4*pi*v.^2).*exp(-(m(i)*v.^2)./(2*k*T));
    plot(v,f,'color',clr,'linewidth',1.5);
end
title('MB Molecular speed distribution for Noble gases')
xlabel('v (m/s)')
ylabel('f')
axis equal
axis square
grid on
hold off

disp('-----------------------------------------------------------------------------------')
disp('-------------------------------------THANK YOU-------------------------------------')
disp('-----------------------------------------------------------------------------------')
toc;

% generate values from the uniform distribution onthe interval [a,b]
% r = a + (b-a).*rand(100,1);