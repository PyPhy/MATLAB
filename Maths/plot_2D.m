
disp('if you want to plot the graph in cartasian plane type "1"');
disp('if you want to plot the graph in polar plane type "0"');
grf=input('enter the graph style: ');
if grf==1
syms x
disp('enter the expression in terms of "x"')
exp=input('enter the expression: ');
y=exp;
figure('color',[0.999 1 0.9]);
h=ezplot(y);
xlabel('X');
ylabel('Y');
axis square
axis equal
grid on
elseif grf==0
syms tta
disp('enter the expression in terms of "tta" for polar graph')
exp=input('enter the expression: ');
r=exp;
figure('color',[0.999 1 0.9]);
ezpolar(r);
else
error('please enter the data correctly');
end
set(findobj('type','line'),'color',[0.9 0.2 0.3]);
set(findobj('type','line'),'linewidth',2);