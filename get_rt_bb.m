function [Rtemp,BBtemp] = get_rt_bb(file)
%UNTITLED6 Summary of this function goes here
Rtemp = str2double(cell2mat(file(2)));
x_dat_ext = split(cell2mat(file(3)),'.');
BBtemp = str2double(cell2mat(x_dat_ext(1)));
clear x_dat_ext;
end

