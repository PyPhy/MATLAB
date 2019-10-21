%% Input part
syms x n
disp('enter the expression in terms of x only')
exp = input('enter the expression: ');
T   = input('enter the period: ');
acc = input('enter the accuracy: ');
L   = T/2;

%% Calculation part
f  = inline(exp, 'x')

% Fourier coff.
a0 = (1/(2*L))* int(f(x), -L, L)
an = (1/L)* int(f(x)* cos((n* (sym('pi'))* x)/L), -L, L)
bn = (1/L)* int(f(x)* sin((n* (sym('pi'))* x)/L), -L, L)

sum1 = symsum(an* cos((n*(sym('pi'))*x)/L), n, 1, acc);
sum2 = symsum(bn* sin((n*(sym('pi'))*x)/L), n, 1, acc);

% Fourier series
Sf = inline(a0+sum1+sum2,'x')

%% plotting
figure('color','white');
fourier = ezplot(Sf);
%
hold on
ezplot(f)
set(fourier,'color','r')
set(findobj('type','line'),'linewidth', 3);
%
leg = legend('$\hat{F}(x)$', '$f(x)$');
set(leg, 'Interpreter', 'latex', 'FontSize', 15);
%
title('\bf{Fourier analysis}', 'Interpreter', 'latex', 'FontSize', 22)
xlabel('\bf{$x$}', 'Interpreter', 'latex', 'FontSize', 17)
ylabel('\bf{$f(x)$}', 'Interpreter', 'latex', 'FontSize', 17)
grid on
axis square
hold off