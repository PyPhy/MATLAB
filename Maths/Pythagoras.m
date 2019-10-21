t=-pi:.04:pi;
tx=cos(t);
ty=-sin(t);             %check the result for +sin(t)
figure('color','white');  %check the background for different colors e.g 'blue'
line(tx,ty, 'color','blue','LineWidth',3);
title('See Pythagoras Run!','Color','red')
axis off
axis equal
hold on
x=[-1 0 1 -1];
y=[0 0 0 0];
ht=area(x,y,'facecolor','red');
set(ht,'XDataSource','x')
set(ht,'YDataSource','y')
for j=1:length(t)
    x(2)=tx(j);
    y(2)=ty(j);
    refreshdata
    drawnow
end