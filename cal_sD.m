function sD = cal_sD(Tb, Tt, rTK, MB, n)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
global ck;
TbK=Tb+ck;
TtK=Tt+ck;
em = 1;
[m2, m1, m0, b2, b1, b0] = coefficients(MB,n);
m_poly = m2 * Tb^2 + m1 * Tb + m0;
b_poly = b2 * Tb^2 + b1 * Tb + b0;  
sD = ((TtK^4)*em - TbK^4 + (1-em)*rTK^4 - b_poly)/m_poly;
end

