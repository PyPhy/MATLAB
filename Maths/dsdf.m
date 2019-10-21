t=0:0.001:6.3;
x=16*(sin(t)).^3;
y=13*cos(t)-5*cos(2*t)-2*cos(3*t)-cos(4*t);

figure('color',[1 1 1]);

for i = 1:length(t)
    axis square
    axis off
    h = plot(x,y,'r','LineWidth',2);
    F(i) = getframe();
    
end
delete(h);
text(-12,0,'Thank you','FontSize',30);
axis off