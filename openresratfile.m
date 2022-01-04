function RTT = openresratfile()
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
filename = 'RTD.xls';
opts = detectImportOptions(filename);
opts.VariableNames = {'TimeStamp','Record','ResRat'};
RT = readtable(filename,opts);
RTT = table2timetable(RT);
end

