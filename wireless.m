% Matlab code to merge Wireless IRT data files

projectdir = '/Users/kama/Desktop/INTERNSHIP/WirelessIRT_Processing/Wireless_cal_data';
FileNames = dir(fullfile(projectdir, 'W*.dat'));
T_tot = table();
outputfile = [];
for(i=1:446)
		filename = FileNames(i).name;
		file_info = split(filename,'_');
		sensor_name = char(file_info(1));

		switch sensor_name
			case {'W1'}
				Rtemp = str2num(cell2mat(file_info(2)));
				x_dat_ext = split(cell2mat(file_info(3)),'.');
				BBtemp = str2num(cell2mat(x_dat_ext(1)));
				serial_num = 1177;
				sensor_num = 1;
				newfile=fullfile(projectdir,'W1.csv');
				outputfile = [outputfile;newfile];
				% Get stop and start records
				% wr=xlsread('IRTSensorCalibration_20190424.xls','Wireless');
				% is there a better way to do the following?
			%	p=1;
			%	while (p<=444)
			%		if(serial_num==wr(3,p))&&(Rtemp==wr(5,p))&&(BBtemp == wr(1,p))
			%			start_rec = wr(4,p);
			%			stop_rec = wr(6,p);
			%		else
			%			p=p+1;
			%		end
			%	end
			
				% Set up Table
				opts = detectImportOptions(filename);
			%	opts.DataLines = [start_rec stop_rec];
				opts.VariableNames = {'Date','Record','TargetT','BodyT','Ti','BV','SS','Tpanel','MainBV'};
				opts.SelectedVariableNames = {'Date', 'Record', 'TargetT', 'BodyT'};

				T = readtable(filename,opts);
				file_str = convertCharsToStrings(filename);
				T.OriginalFileName(:) = file_str;
				T.RoomTemp(:) = Rtemp;
				T.BlackBodyDisp(:) = BBtemp;
				T.SerialNumber(:) = serial_num;
				T_tot=[T_tot;T];
			case {'W2'}
				Rtemp = str2num(cell2mat(file_info(2)));
				x_dat_ext = split(cell2mat(file_info(3)),'.');
				BBtemp = str2num(cell2mat(x_dat_ext(1)));
				serial_num = 1177;
				sensor_num = 2;
				newfile=fullfile(projectdir,'W2.csv');
				outputfile = [outputfile;newfile];

				% Set up Table
				opts = detectImportOptions(filename);
				opts.VariableNames = {'Date','Record','TargetT','BodyT','Ti','BV','SS','Tpanel','MainBV'};
				opts.SelectedVariableNames = {'Date', 'Record', 'TargetT', 'BodyT'};

				T = readtable(filename,opts);
				file_str = convertCharsToStrings(filename);
				T.OriginalFileName(:) = file_str;
				T.RoomTemp(:) = Rtemp;
				T.BlackBodyDisp(:) = BBtemp;
				T.SerialNumber(:) = serial_num;
				T_tot=[T_tot;T];
			case {'W3'}
				Rtemp = str2num(cell2mat(file_info(2)));
				x_dat_ext = split(cell2mat(file_info(3)),'.');
				BBtemp = str2num(cell2mat(x_dat_ext(1)));
				serial_num = 1177;
				sensor_num = 3;
				newfile=fullfile(projectdir,'W3.csv');
				outputfile = [outputfile;newfile];

				% Set up Table
				opts = detectImportOptions(filename);
				opts.VariableNames = {'Date','Record','TargetT','BodyT','Ti','BV','SS','Tpanel','MainBV'};
				opts.SelectedVariableNames = {'Date', 'Record', 'TargetT', 'BodyT'};

				T = readtable(filename,opts);
				file_str = convertCharsToStrings(filename);
				T.OriginalFileName(:) = file_str;
				T.RoomTemp(:) = Rtemp;
				T.BlackBodyDisp(:) = BBtemp;
				T.SerialNumber(:) = serial_num;
				T_tot=[T_tot;T];
			case {'W4'}
				Rtemp = str2num(cell2mat(file_info(2)));
				x_dat_ext = split(cell2mat(file_info(3)),'.');
				BBtemp = str2num(cell2mat(x_dat_ext(1)));
				serial_num = 1177;
				sensor_num = 4;
				newfile=fullfile(projectdir,'W4.csv');
				outputfile = [outputfile;newfile];

				% Set up Table
				opts = detectImportOptions(filename);
				opts.VariableNames = {'Date','Record','TargetT','BodyT','Ti','BV','SS','Tpanel','MainBV'};
				opts.SelectedVariableNames = {'Date', 'Record', 'TargetT', 'BodyT'};

				T = readtable(filename,opts);
				file_str = convertCharsToStrings(filename);
				T.OriginalFileName(:) = file_str;
				T.RoomTemp(:) = Rtemp;
				T.BlackBodyDisp(:) = BBtemp;
				T.SerialNumber(:) = serial_num;
				T_tot=[T_tot;T];
			case {'W5'}
				Rtemp = str2num(cell2mat(file_info(2)));
				x_dat_ext = split(cell2mat(file_info(3)),'.');
				BBtemp = str2num(cell2mat(x_dat_ext(1)));
				serial_num = 1177;
				sensor_num = 5;
				newfile=fullfile(projectdir,'W5.csv');
				outputfile = [outputfile;newfile];

				% Set up Table
				opts = detectImportOptions(filename);
				opts.VariableNames = {'Date','Record','TargetT','BodyT','Ti','BV','SS','Tpanel','MainBV'};
				opts.SelectedVariableNames = {'Date', 'Record', 'TargetT', 'BodyT'};

				T = readtable(filename,opts);
				file_str = convertCharsToStrings(filename);
				T.OriginalFileName(:) = file_str;
				T.RoomTemp(:) = Rtemp;
				T.BlackBodyDisp(:) = BBtemp;
				T.SerialNumber(:) = serial_num;
				T_tot=[T_tot;T];

			case {'W6'}
				Rtemp = str2num(cell2mat(file_info(2)));
				x_dat_ext = split(cell2mat(file_info(3)),'.');
				BBtemp = str2num(cell2mat(x_dat_ext(1)));
				serial_num = 1177;
				sensor_num = 6;
				newfile=fullfile(projectdir,'W6.csv');
				outputfile = [outputfile;newfile];

				% Set up Table
				opts = detectImportOptions(filename);
				opts.VariableNames = {'Date','Record','TargetT','BodyT','Ti','BV','SS','Tpanel','MainBV'};
				opts.SelectedVariableNames = {'Date', 'Record', 'TargetT', 'BodyT'};

				T = readtable(filename,opts);
				file_str = convertCharsToStrings(filename);
				T.OriginalFileName(:) = file_str;
				T.RoomTemp(:) = Rtemp;
				T.BlackBodyDisp(:) = BBtemp;
				T.SerialNumber(:) = serial_num;
				T_tot=[T_tot;T];

			case {'W7'}
				Rtemp = str2num(cell2mat(file_info(2)));
				x_dat_ext = split(cell2mat(file_info(3)),'.');
				BBtemp = str2num(cell2mat(x_dat_ext(1)));
				serial_num = 1177;
				sensor_num = 7;
				newfile=fullfile(projectdir,'W7.csv');
				outputfile = [outputfile;newfile];

				% Set up Table
				opts = detectImportOptions(filename);
				opts.VariableNames = {'Date','Record','TargetT','BodyT','Ti','BV','SS','Tpanel','MainBV'};
				opts.SelectedVariableNames = {'Date', 'Record', 'TargetT', 'BodyT'};

				T = readtable(filename,opts);
				file_str = convertCharsToStrings(filename);
				T.OriginalFileName(:) = file_str;
				T.RoomTemp(:) = Rtemp;
				T.BlackBodyDisp(:) = BBtemp;
				T.SerialNumber(:) = serial_num;
				T_tot=[T_tot;T];

			case {'W8'}
				Rtemp = str2num(cell2mat(file_info(2)));
				x_dat_ext = split(cell2mat(file_info(3)),'.');
				BBtemp = str2num(cell2mat(x_dat_ext(1)));
				serial_num = 1177;
				sensor_num = 8;
				newfile=fullfile(projectdir,'W8.csv');
				outputfile = [outputfile;newfile];

				% Set up Table
				opts = detectImportOptions(filename);
				opts.VariableNames = {'Date','Record','TargetT','BodyT','Ti','BV','SS','Tpanel','MainBV'};
				opts.SelectedVariableNames = {'Date', 'Record', 'TargetT', 'BodyT'};

				T = readtable(filename,opts);
				file_str = convertCharsToStrings(filename);
				T.OriginalFileName(:) = file_str;
				T.RoomTemp(:) = Rtemp;
				T.BlackBodyDisp(:) = BBtemp;
				T.SerialNumber(:) = serial_num;
				T_tot=[T_tot;T];

			case {'W9'}
				Rtemp = str2num(cell2mat(file_info(2)));
				x_dat_ext = split(cell2mat(file_info(3)),'.');
				BBtemp = str2num(cell2mat(x_dat_ext(1)));
				serial_num = 1177;
				sensor_num = 9;
				newfile=fullfile(projectdir,'W9.csv');
				outputfile = [outputfile;newfile];

				% Set up Table
				opts = detectImportOptions(filename);
				opts.VariableNames = {'Date','Record','TargetT','BodyT','Ti','BV','SS','Tpanel','MainBV'};
				opts.SelectedVariableNames = {'Date', 'Record', 'TargetT', 'BodyT'};

				T = readtable(filename,opts);
				file_str = convertCharsToStrings(filename);
				T.OriginalFileName(:) = file_str;
				T.RoomTemp(:) = Rtemp;
				T.BlackBodyDisp(:) = BBtemp;
				T.SerialNumber(:) = serial_num;
				T_tot=[T_tot;T];

			case {'W10'}
				Rtemp = str2num(cell2mat(file_info(2)));
				x_dat_ext = split(cell2mat(file_info(3)),'.');
				BBtemp = str2num(cell2mat(x_dat_ext(1)));
				serial_num = 1177;
				sensor_num = 10;
				newfile=fullfile(projectdir,'W10.csv');
				outputfile = [outputfile;newfile];

				% Set up Table
				opts = detectImportOptions(filename);
				opts.VariableNames = {'Date','Record','TargetT','BodyT','Ti','BV','SS','Tpanel','MainBV'};
				opts.SelectedVariableNames = {'Date', 'Record', 'TargetT', 'BodyT'};

				T = readtable(filename,opts);
				file_str = convertCharsToStrings(filename);
				T.OriginalFileName(:) = file_str;
				T.RoomTemp(:) = Rtemp;
				T.BlackBodyDisp(:) = BBtemp;
				T.SerialNumber(:) = serial_num;
				T_tot=[T_tot;T];

			case {'W11'}
				Rtemp = str2num(cell2mat(file_info(2)));
				x_dat_ext = split(cell2mat(file_info(3)),'.');
				BBtemp = str2num(cell2mat(x_dat_ext(1)));
				serial_num = 1177;
				sensor_num = 11;
				newfile=fullfile(projectdir,'W11.csv');
				outputfile = [outputfile;newfile];

				% Set up Table
				opts = detectImportOptions(filename);
				opts.VariableNames = {'Date','Record','TargetT','BodyT','Ti','BV','SS','Tpanel','MainBV'};
				opts.SelectedVariableNames = {'Date', 'Record', 'TargetT', 'BodyT'};

				T = readtable(filename,opts);
				file_str = convertCharsToStrings(filename);
				T.OriginalFileName(:) = file_str;
				T.RoomTemp(:) = Rtemp;
				T.BlackBodyDisp(:) = BBtemp;
				T.SerialNumber(:) = serial_num;
				T_tot=[T_tot;T];

			case {'W12'}
				Rtemp = str2num(cell2mat(file_info(2)));
				x_dat_ext = split(cell2mat(file_info(3)),'.');
				BBtemp = str2num(cell2mat(x_dat_ext(1)));
				serial_num = 1177;
				sensor_num = 12;
				newfile=fullfile(projectdir,'W12.csv');
				outputfile = [outputfile;newfile];

				% Set up Table
				opts = detectImportOptions(filename);
				opts.VariableNames = {'Date','Record','TargetT','BodyT','Ti','BV','SS','Tpanel','MainBV'};
				opts.SelectedVariableNames = {'Date', 'Record', 'TargetT', 'BodyT'};

				T = readtable(filename,opts);
				file_str = convertCharsToStrings(filename);
				T.OriginalFileName(:) = file_str;
				T.RoomTemp(:) = Rtemp;
				T.BlackBodyDisp(:) = BBtemp;
				T.SerialNumber(:) = serial_num;
				T_tot=[T_tot;T];
			otherwise
		end
	i=i+1;
end

for(i=1:12)
		writetable(T_tot,outputfile(i,:));
end

% M=load(outputfile);
% xlswrite(outputfile, data);




