function resrat = get_resrat(RTT, tstart, tstop)
% grab ResRat from 1.0 file RTD sheet for timestamps for record numbers
% that I have
S = timerange(tstart,tstop,'closed');
RTTS = RTT(S,:);
resrat = mean(RTTS.ResRat(:));
%clear filename opts rr ResratTable datetimes j tstart tstop;

% Use RTD for Ttarget in equation
% Use emissivity of 1
% Use factory coefficients
% Calculate Sd
% 
% Use T target, Tbody, and roomtemp from Wireless_sensors file
% Use new Sd
% Use emissivity of .95
% Start with old coefficents
% Approximate or use solver until you get optimized coefficients.

end