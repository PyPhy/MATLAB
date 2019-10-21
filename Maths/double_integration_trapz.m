% created a grid of domain values
x=-3:0.01:3;
y=-5:0.01:5;
[X Y]=meshgrid(x,y);

% calculate the function over the grid
F=X.^2+Y.^2;

% trapz integrates numetic data
trapz(y,trapz(x,F,2))

% trapz erforms the integration over x first,producing a column vector.
% then, the integration over y reduces the column vector to a single scalar.
% trapz slightly overstimates the exact answer of 680 because f(x,y) is concave up.
for i=1:1001
Ft(i)=trapz(x,F(i,:));
end
aF=trapz(y,Ft)