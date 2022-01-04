function resrat = resrattt(RTT, tstart, tstop)
% grab ResRat from 1.0 file RTD sheet for timestamps for record numbers
% that I have
S = timerange(tstart,tstop,'closed');
RTTS = RTT(S,:);
resrat = mean(RTTS.ResRat(:));
end