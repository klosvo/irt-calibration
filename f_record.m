function [rstart, rstop, actualRoomTemp] = f_record(rn, fn_rt, fn_bb)
% Get stop and start records
p=1;
value_assigned = 0;
exit_loop = 100;
while (p<=36)
    rt = rn.RoomTemp(p);
    bb = rn.BlackBody(p);
    if ((fn_rt == rt) && (fn_bb == bb))
        rstart = rn.StartRec(p);
        rstop = rn.EndRec(p);
        actualRoomTemp = rn.RoomT(p);
        value_assigned = 1;
        p = exit_loop;
    else
        p=p+1;
    end
end
if(value_assigned == 0)
    fprintf('No value assigned to Stop or Start.\n');
end
   % clear filename p value_assigned exit_loop rn rt bb opts;
end

