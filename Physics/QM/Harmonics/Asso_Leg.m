function P = Asso_Leg(l, m, x)

    if m == 0
        P = Legendre_Poly(l, x);
        
    elseif m > 0
        P = (1./ sqrt(1 - x.^2)).* ((l-m+1)* x.* Asso_Leg(l, m-1, x) ...
                                -  (l+m-1)* Asso_Leg(l-1, m-1, x) );
                            
    elseif m < 0
        m = abs(m);
        P = ((-1)^m) * (factorial(l - m)/ factorial(l + m))* Asso_Leg(l, m, x);
                            
    end
