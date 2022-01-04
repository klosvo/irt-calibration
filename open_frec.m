function RN = open_frec(sensor)
% Get stop and start records
filename = 'W_rec_num_sheets.xls';
opts = detectImportOptions(filename,'Sheet',sensor);
opts.VariableNames = {'Nom_BBtemp','SerialNo','StartRec','RoomT','EndRec','BlackBody','RoomTemp'};
opts.SelectedVariableNames = {'StartRec','RoomT','EndRec','BlackBody','RoomTemp'};
RN = readtable(filename,opts);
end

