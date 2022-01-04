% Matlab code to merge Wireless IRT data files

projectdir = '/Users/kama/Desktop/INTERNSHIP/WirelessIRT_Processing/Wireless_cal_data';
FileNames = dir(fullfile(projectdir, 'W*.dat'));
outputfile = fullfile(projectdir,'Wireless_sensors.xls');
outputfile2 = fullfile(projectdir,'new_coefficients.xls');

T = table();
T1 = table();
T2 = table();
T3 = table();
T4 = table();
T5 = table();
T6 = table();
T7 = table();
T8 = table();
T9 = table();
T10 = table();
T11 = table();
T12 = table();

global ck m b;
b = -243.580310623707;
ck = 273.15;
m = 243.991077753316;
RTT = openresratfile();
MB = opencoefficients();
RN1 = open_frec(1);
RN2 = open_frec(2);
RN3 = open_frec(3);
RN4 = open_frec(4);
RN5 = open_frec(5);
RN6 = open_frec(6);
RN7 = open_frec(7);
RN8 = open_frec(8);
RN9 = open_frec(9);
RN10 = open_frec(10);
RN11 = open_frec(11);
RN12 = open_frec(12);


% want to plot for each sensor - actual TT from ResRat on x, TT
% from new coefficients on y access
% or TT w/ new coefficients vs TT w/ old coefficients


for i=1:429
    filename = FileNames(i).name;
    file_info = split(filename,'_');
    sensorname = char(file_info(1));
    switch sensorname
        case {'W1'}
            serial_num = 1177;
            sensor = '1';
            [rt, bb] = get_rt_bb(file_info);
            [rstart, rstop, actualRT] = f_record(RN1,rt,bb);
            [T, start_t, stop_t] = get_data(filename, rstart, rstop, actualRT, bb, serial_num);
            T.ResRat(:) = resrattt(RTT,start_t,stop_t);
            avg_resrat = T.ResRat(1);
            T.TTfromResRat(:) = m*avg_resrat+b;
            T.SD(:) = cal_sD(T.BodyAvg(1), T.TargetAvg(1), T.RTinK(1), MB, 1);
            T.TT_Old(:) = Tcal_old(T.BodyAvg(1), MB, 1, T.SD(1), T.RTinK(1));
            T = removevars(T,{'Date','Record','ReportedTargetT','BodyT','OriginalFileName','RoomTemp','BlackBodyDisp','SerialNumber','RTinC','BBinC','TargetAvg','ResRat'});
            T1=[T1;T];
        case {'W2'}
            serial_num = 1183;
            sensor = '2';
            [rt, bb] = get_rt_bb(file_info);
            [rstart, rstop, actualRT] = f_record(RN2,rt,bb);
            [T, start_t, stop_t] = get_data(filename, rstart, rstop, actualRT, bb, serial_num);
            T.ResRat(:) = resrattt(RTT,start_t,stop_t);
            avg_resrat = T.ResRat(1);
            T.TTfromResRat(:) = m*avg_resrat+b;
            T.SD(:) = cal_sD(T.BodyAvg(1), T.TargetAvg(1), T.RTinK(1), MB, 2);
            T.TT_Old(:) = Tcal_old(T.BodyAvg(1), MB, 2, T.SD(1), T.RTinK(1));
            T = removevars(T,{'Date','Record','ReportedTargetT','BodyT','OriginalFileName','RoomTemp','BlackBodyDisp','SerialNumber','RTinC','BBinC','TargetAvg','ResRat'});
            T2=[T2;T];
        case {'W3'}
            serial_num = 1193;
            sensor = '3';
            [rt, bb] = get_rt_bb(file_info);
            [rstart, rstop, actualRT] = f_record(RN3,rt,bb);
            [T, start_t, stop_t] = get_data(filename, rstart, rstop, actualRT, bb, serial_num);
            T.ResRat(:) = resrattt(RTT,start_t,stop_t);
            avg_resrat = T.ResRat(1);
            T.TTfromResRat(:) = m*avg_resrat+b;
            T.SD(:) = cal_sD(T.BodyAvg(1), T.TargetAvg(1), T.RTinK(1), MB, 3);
            T.TT_Old(:) = Tcal_old(T.BodyAvg(1), MB, 3, T.SD(1), T.RTinK(1));
            T = removevars(T,{'Date','Record','ReportedTargetT','BodyT','OriginalFileName','RoomTemp','BlackBodyDisp','SerialNumber','RTinC','BBinC','TargetAvg','ResRat'});
            T3=[T3;T];
        case {'W4'}
            serial_num = 1196;
            sensor = '4';
            [rt, bb] = get_rt_bb(file_info);
            [rstart, rstop, actualRT] = f_record(RN4,rt,bb);
            [T, start_t, stop_t] = get_data(filename, rstart, rstop, actualRT, bb, serial_num);
            T.ResRat(:) = resrattt(RTT,start_t,stop_t);
            avg_resrat = T.ResRat(1);
            T.TTfromResRat(:) = m*avg_resrat+b;
            T.SD(:) = cal_sD(T.BodyAvg(1), T.TargetAvg(1), T.RTinK(1), MB, 4);
            T.TT_Old(:) = Tcal_old(T.BodyAvg(1), MB, 4, T.SD(1), T.RTinK(1));
            T = removevars(T,{'Date','Record','ReportedTargetT','BodyT','OriginalFileName','RoomTemp','BlackBodyDisp','SerialNumber','RTinC','BBinC','TargetAvg','ResRat'});
            T4=[T4;T];
        case {'W5'}
            serial_num = 1202;
            sensor = '5';
            [rt, bb] = get_rt_bb(file_info);
            [rstart, rstop, actualRT] = f_record(RN5,rt,bb);
            [T, start_t, stop_t] = get_data(filename, rstart, rstop, actualRT, bb, serial_num);
            T.ResRat(:) = resrattt(RTT,start_t,stop_t);
            avg_resrat = T.ResRat(1);
            T.TTfromResRat(:) = m*avg_resrat+b;
            T.SD(:) = cal_sD(T.BodyAvg(1), T.TargetAvg(1), T.RTinK(1), MB, 5);
            T.TT_Old(:) = Tcal_old(T.BodyAvg(1), MB, 5, T.SD(1), T.RTinK(1));
            T = removevars(T,{'Date','Record','ReportedTargetT','BodyT','OriginalFileName','RoomTemp','BlackBodyDisp','SerialNumber','RTinC','BBinC','TargetAvg','ResRat'});
            T5=[T5;T];
        case {'W6'}
            serial_num = 1203;
            sensor = '6';
            [rt, bb] = get_rt_bb(file_info);
            [rstart, rstop, actualRT] = f_record(RN6,rt,bb);
            [T, start_t, stop_t] = get_data(filename, rstart, rstop, actualRT, bb, serial_num);
            T.ResRat(:) = resrattt(RTT,start_t,stop_t);
            avg_resrat = T.ResRat(1);
            T.TTfromResRat(:) = m*avg_resrat+b;
            T.SD(:) = cal_sD(T.BodyAvg(1), T.TargetAvg(1), T.RTinK(1), MB, 6);
            T.TT_Old(:) = Tcal_old(T.BodyAvg(1), MB, 6, T.SD(1), T.RTinK(1));
            T = removevars(T,{'Date','Record','ReportedTargetT','BodyT','OriginalFileName','RoomTemp','BlackBodyDisp','SerialNumber','RTinC','BBinC','TargetAvg','ResRat'});
            T6=[T6;T];
        case {'W7'}
            serial_num = 1204;
            sensor = '7';
            [rt, bb] = get_rt_bb(file_info);
            [rstart, rstop, actualRT] = f_record(RN7,rt,bb);
            [T, start_t, stop_t] = get_data(filename, rstart, rstop, actualRT, bb, serial_num);
            T.ResRat(:) = resrattt(RTT,start_t,stop_t);
            avg_resrat = T.ResRat(1);
            T.TTfromResRat(:) = m*avg_resrat+b;
            T.SD(:) = cal_sD(T.BodyAvg(1), T.TargetAvg(1), T.RTinK(1), MB, 7);
            T.TT_Old(:) = Tcal_old(T.BodyAvg(1), MB, 7, T.SD(1), T.RTinK(1));
            T = removevars(T,{'Date','Record','ReportedTargetT','BodyT','OriginalFileName','RoomTemp','BlackBodyDisp','SerialNumber','RTinC','BBinC','TargetAvg','ResRat'});
            T7=[T7;T];
        case {'W8'}
            serial_num = 1260;
            sensor = '8';
            [rt, bb] = get_rt_bb(file_info);
            [rstart, rstop, actualRT] = f_record(RN8,rt,bb);
            [T, start_t, stop_t] = get_data(filename, rstart, rstop, actualRT, bb, serial_num);
            T.ResRat(:) = resrattt(RTT,start_t,stop_t);
            avg_resrat = T.ResRat(1);
            T.TTfromResRat(:) = m*avg_resrat+b;
            T.SD(:) = cal_sD(T.BodyAvg(1), T.TargetAvg(1), T.RTinK(1), MB, 8);
            T.TT_Old(:) = Tcal_old(T.BodyAvg(1), MB, 8, T.SD(1), T.RTinK(1));
            T = removevars(T,{'Date','Record','ReportedTargetT','BodyT','OriginalFileName','RoomTemp','BlackBodyDisp','SerialNumber','RTinC','BBinC','TargetAvg','ResRat'});
            T8=[T8;T];
        case {'W9'}
            serial_num = 1261;
            sensor = '9';
            [rt, bb] = get_rt_bb(file_info);
            [rstart, rstop, actualRT] = f_record(RN9,rt,bb);
            [T, start_t, stop_t] = get_data(filename, rstart, rstop, actualRT, bb, serial_num);
            T.ResRat(:) = resrattt(RTT,start_t,stop_t);
            avg_resrat = T.ResRat(1);
            T.TTfromResRat(:) = m*avg_resrat+b;
            T.SD(:) = cal_sD(T.BodyAvg(1), T.TargetAvg(1), T.RTinK(1), MB, 9);
            T.TT_Old(:) = Tcal_old(T.BodyAvg(1), MB, 9, T.SD(1), T.RTinK(1));
            T = removevars(T,{'Date','Record','ReportedTargetT','BodyT','OriginalFileName','RoomTemp','BlackBodyDisp','SerialNumber','RTinC','BBinC','TargetAvg','ResRat'});
            T9=[T9;T];
        case {'W10'}
            serial_num = 1262;
            sensor = '10';
            [rt, bb] = get_rt_bb(file_info);
            [rstart, rstop, actualRT] = f_record(RN10,rt,bb);
            [T, start_t, stop_t] = get_data(filename, rstart, rstop, actualRT, bb, serial_num);
            T.ResRat(:) = resrattt(RTT,start_t,stop_t);
            avg_resrat = T.ResRat(1);
            T.TTfromResRat(:) = m*avg_resrat+b;
            T.SD(:) = cal_sD(T.BodyAvg(1), T.TargetAvg(1), T.RTinK(1), MB, 10);
            T.TT_Old(:) = Tcal_old(T.BodyAvg(1), MB, 10, T.SD(1), T.RTinK(1));
            T = removevars(T,{'Date','Record','ReportedTargetT','BodyT','OriginalFileName','RoomTemp','BlackBodyDisp','SerialNumber','RTinC','BBinC','TargetAvg','ResRat'});
            T10=[T10;T];
        case {'W11'}
            serial_num = 1264;
            sensor = '11';
            [rt, bb] = get_rt_bb(file_info);
            [rstart, rstop, actualRT] = f_record(RN11,rt,bb);
            [T, start_t, stop_t] = get_data(filename, rstart, rstop, actualRT, bb, serial_num);
            T.ResRat(:) = resrattt(RTT,start_t,stop_t);
            avg_resrat = T.ResRat(1);
            T.TTfromResRat(:) = m*avg_resrat+b;
            T.SD(:) = cal_sD(T.BodyAvg(1), T.TargetAvg(1), T.RTinK(1), MB, 11);
            T.TT_Old(:) = Tcal_old(T.BodyAvg(1), MB, 11, T.SD(1), T.RTinK(1));
            T = removevars(T,{'Date','Record','ReportedTargetT','BodyT','OriginalFileName','RoomTemp','BlackBodyDisp','SerialNumber','RTinC','BBinC','TargetAvg','ResRat'});
            T11=[T11;T];
        case {'W12'}
            serial_num = 1265;
            sensor = '12';
            [rt, bb] = get_rt_bb(file_info);
            [rstart, rstop, actualRT] = f_record(RN12,rt,bb);
            [T, start_t, stop_t] = get_data(filename, rstart, rstop, actualRT, bb, serial_num);
            T.ResRat(:) = resrattt(RTT,start_t,stop_t);
            avg_resrat = T.ResRat(1);
            T.TTfromResRat(:) = m*avg_resrat+b;
            T.SD(:) = cal_sD(T.BodyAvg(1), T.TargetAvg(1), T.RTinK(1), MB, 12);
            T.TT_Old(:) = Tcal_old(T.BodyAvg(1), MB, 12, T.SD(1), T.RTinK(1));
            T = removevars(T,{'Date','Record','ReportedTargetT','BodyT','OriginalFileName','RoomTemp','BlackBodyDisp','SerialNumber','RTinC','BBinC','TargetAvg','ResRat'});
            T12=[T12;T];
        otherwise
           % fprintf('Error!\n');
    end
end
%writetable(T1_tot,outputfile,'Sheet',1,'UseExcel',true);
S1 = table2array(T1);
S2 = table2array(T2);
S3 = table2array(T3);
S4 = table2array(T4);
S5 = table2array(T5);
S6 = table2array(T6);
S7 = table2array(T7);
S8 = table2array(T8);
S9 = table2array(T9);
S10 = table2array(T10);
S11 = table2array(T11);
S12 = table2array(T12);


allSensors = [S1; S2; S3; S4; S5; S6; S7; S8; S9; S10; S11; S12];
l=[length(S1) length(S2) length(S3) length(S4) length(S5) length(S6) length(S7) length(S8) length(S9) length(S10) length(S11) length(S12)];
k=1;

for i=1:12
    rowmin = k;
    rowmax = l(i)+k-1;
    thistable = allSensors(rowmin:rowmax,:);
    TT = array2table(thistable, 'VariableNames', {'RTinK','BodyAvg','TTfromResRat','SD','TT_Old'});
    AvgBodC = TT.BodyAvg(:);
    Tt_res = TT.TTfromResRat(:);
    sd = TT.SD(:);
    rtk = TT.RTinK(:);
    em = .95;
    
    target_predicted = @(c,xdata) ((((xdata(:,1)+ck).^4 + xdata(:,2).*(c(1).*xdata(:,1).^2 + c(2).*xdata(:,1) + c(3)) + (c(4).*xdata(:,1).^2 + c(5).*xdata(:,1) + c(6)) - (1-em).*(xdata(:,3)).^4)./em).^.25 - 273.15);
    
    [m2, m1, m0, b2, b1, b0] = coefficients(MB, i);
    C0=[m2, m1, m0, b2, b1, b0];
    %options = optimoptions('lsqcurvefit','Display','iter','OptimalityTolerance',1.0e-09);
    options = optimoptions('lsqcurvefit','OptimalityTolerance',1.0e-07);
    x = [AvgBodC sd rtk];
    
    C = lsqcurvefit(target_predicted,C0,x,Tt_res,[],[],options);
    
    newMB = array2table(C, 'VariableNames',{'m2','m1','m0','b2','b1','b0'});
    TT_new = big_eqn(AvgBodC, rtk, sd, em, C);
    TT_new_t = array2table(TT_new,'VariableNames',{'New_TargetT'});
    TT1 = [TT TT_new_t];
    TT1.SensorNum(:) = i;
    % just added the next two lines
    % wondering about TT1 - does the table name need to change for each
    % sensor in order to prevent old values from being used?
    % some sensors may need more iterations
    TT1.ErrorOldMB(:)=TT1.TTfromResRat(:)-TT1.TT_Old(:);
    TT1.ErrorNewMB(:)=TT1.TTfromResRat(:)-TT1.New_TargetT(:);
    writetable(TT1,outputfile,'Sheet',i,'UseExcel',true);
    writetable(newMB,outputfile2,'Sheet',i,'UseExcel',true);
    k=1+rowmax;
end


% next steps = 
% check values against hope's calculations
% check on RTinC values...why do they always end in a repeated number?
% cut out unnecessary stuff