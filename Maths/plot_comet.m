disp('if your equation is parametric then type "1"')
disp('if its a simple equation type "2"')
grp=input('enter the style of graph: ');
if grp==1
t=input('enter the parameter vector "t": ');
x=input('enter the equation of "x" in terms of t: ');
y=input('enter the equation of "y" in terms of t: ');
figure('color',[0.999 1 0.9]);
comet(x,y);
elseif grp==2
x=input('enter the "x" vector: ');
y=input('enter the equation of "y" in terms of x: ');
figure('color',[0.999 1 0.9]);
comet(x,y);
else
error('please enter data correctly')
end