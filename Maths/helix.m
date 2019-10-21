% inputs to draw a helix
% "t" is theta or an angle
% "r" is radius of helix
% "p" is pitch of helix

t=0:0.01:25;
%r=1;               % also try r=t
%p=0.1;

% parametric equation of helix

x=(1+0.25*cos(75*t)).*cos(t); %x=r.*cos(t);
y=(1+0.25*cos(75*t)).*sin(t); %y=r.*sin(t);
z=t+2*sin(75*t);              %z=p.*t;

%figure('color',[0.999 1 0.9]);
%axis square
%comet3(x,y,z)

figure('color',[0.999 1 0.9]);
plot3(x,y,z,'color','red')
axis square
grid on
set(findobj('type','line'),'color',[0.9 0.2 0.3]);
set(findobj('type','line'),'linewidth',2);