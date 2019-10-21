syms x
disp('enter the expression in terms of x only')
exp=input('enter the expression: ');
point=input('enter the point: ');
acc=input('enter the accuracy: ');
f=exp;                                %enter the expression here
ty=taylor(f,acc,point)

%figure('color',[0.999 1 0.9])
%fig_f=ezplot(f);                      %plotting
%hold on
%fig_ty=ezplot(ty);
%set(fig_ty,'color','r')
%legend('f(x)','approximation of f(x)','location','best');
%title('taylor analysis');
%grid on
%ylabel('f(x)');
%hold off