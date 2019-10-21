syms x y
disp('enter the expression in terms of x & y')
disp('please write your expresion in '' ''')
expz=solve(input('enter the expression: '),'y');
figure('color',[0.999 1 0.9]);
hold on
for i=1:length(expz)
    ezplot(expz(i));
end
hold off
hold on
grid on
axis equal
axis square
hold off
set(findobj('type','line'),'linewidth',2)
set(findobj('type','line'),'color','r')
xlabel('X');
ylabel('Y');
%'(x/2)^(2/3)+(y/4)^(2/3)=1'---wrong answer
title('2D plot of equation')