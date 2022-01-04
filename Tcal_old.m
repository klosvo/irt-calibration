function TT_Old = Tcal_old(avgBod, C, n, sD, roomTempK)
%UNTITLED5 Summary of this function goes here
% T_Target with emissivity and old coefficients
  global ck;
  [m2, m1, m0, b2, b1, b0] = coefficients(C, n);
  avgBodK = avgBod+ck;
  em = 0.95;

  m_poly = m2 * (avgBod^2) + m1 * avgBod + m0;
  b_poly = b2 * (avgBod^2) + b1 * avgBod + b0;
  num = avgBodK^4 + m_poly*sD + b_poly - ((1-em)*(roomTempK^4));
  TT_Old=(num/em)^0.25-ck;
 
 % clear avgBod avgBodK roomtemp roomTempK em m_poly b_poly num m2 m1 m0 b2 b1 b0;

end



