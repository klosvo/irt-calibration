function [m2, m1, m0, b2, b1, b0] = coefficients(C,n)
% Set up Table
m2 = C.m2(n);
m1 = C.m1(n);
m0 = C.m0(n);
b2 = C.b2(n);
b1 = C.b1(n);
b0 = C.b0(n);
end