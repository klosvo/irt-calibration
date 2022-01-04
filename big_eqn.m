function tar_new = big_eqn(bt, rtk, sd, em, c)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
global ck;
tar_new = (((bt+ck).^4 + sd.*(c(1)*bt.^2 + c(2)*bt + c(3)) + (c(4)*bt.^2 + c(5)*bt + c(6)) - (1-em)*(rtk).^4)./em).^.25 - 273.15;

%clear em rtk RoomT c sD bt;
end



