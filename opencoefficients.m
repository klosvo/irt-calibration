function C = opencoefficients()
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
filename='Coefficients.xls';
opts = detectImportOptions(filename);
opts.VariableNames = {'Number','SerialNum','m2','b2','m1','b1','m0','b0'};
C = readtable(filename,opts);
clear filename;
end

