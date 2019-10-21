%% Azimuthal and Magnetic quantum nubers

l = input('Azimuthal quantum number "l": ');

if l < 0
    error('"l" can not be a negative number')
end

m = input('Magnetic quantum number "m": ');

if m > l || m < (-l)
    error('quntum number "m" belong to "[-l,l]"')
end

%%  Normalization constant

K = sqrt( ((2*l + 1)* factorial(l - abs(m)))/ (4* pi* factorial(l + abs(m))) );

%% Value of Phi and Theta

phi = linspace(0, 2* pi, 50);
tht = linspace(0, pi, 50);

[Phi, Tht] = meshgrid(phi, tht);

%% Value of Y

if m > 0

    Y = sqrt(2)* K* cos(m* Phi).* Asso_Leg(l, m, cos(Tht));

elseif m < 0

    Y = sqrt(2)* K* sin(abs(m)* Phi).* Asso_Leg(l, abs(m), cos(Tht));

elseif m == 0

    Y = K* Legendre_Poly(l, cos(Tht));

end

%% Take care about negative Y
[p q] = size(Y);

for i = 1: 1: p* q

    if Y(i) < 0
        Tht(i) = Tht(i) + pi;
    end

end

%% Finally convert data to cartesian form

[x y z] = Shperical2Cartesian(Y, Tht, Phi);

%% plotting

figure('color', [1 1 1])
surf(x, y, z)
axis equal
axis('off')
xlabel('X')
ylabel('Y')
zlabel('Z')
