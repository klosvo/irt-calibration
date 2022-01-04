function [T,start_time,stop_time] = get_data(filename, rstart, rstop, Rtemp, BBtemp, serial_num)
%UNTITLED3 Summary of this function goes here
% Set up Table
global ck;
opts = detectImportOptions(filename);
opts.VariableNames = {'Date','Record','ReportedTargetT','BodyT','Ti','BV','SS','Tpanel','MainBV'};
opts.SelectedVariableNames = {'Date', 'Record', 'ReportedTargetT', 'BodyT'};
rec_beg = rstart+5;
rec_end = rstop+5;
opts.DataLines = [rec_beg, rec_end];
T = readtable(filename,opts);
file_str = convertCharsToStrings(filename);
T.OriginalFileName(:) = file_str;
T.RoomTemp(:) = Rtemp;
T.BlackBodyDisp(:) = BBtemp;
T.SerialNumber(:) = serial_num;
T.RTinC(:) = (Rtemp-32)*(5/9);
T.RTinK(:) = T.RTinC(1)+ck;
T.BBinC(:) = (BBtemp-32)*(5/9);
T.TargetAvg(:) = mean(T.ReportedTargetT(:));
T.BodyAvg(:) = mean(T.BodyT(:));
start_time = T.Date(1);
stop_time = T.Date(length(T.Record(:)));
end

