function mag=vectorMag(vector)
[m,n]=size(vector);
if m~=1 && n~=1
    error('vector of improper dimension');
else
    mag=sqrt(sum(vector.^2));
end