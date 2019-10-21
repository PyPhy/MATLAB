function [CX,CY,CZ]=crossProduct(A,B)
if length(A)==3 && length(B)==3
    C=[A(2)*B(3)-A(3)*B(2),A(3)*B(1)-A(1)*B(3),A(1)*B(2)-A(2)*B(1)];
    CX=C(1);
    CY=C(2);
    CZ=C(3);
else
    error('one or more vector components missing!');
end;