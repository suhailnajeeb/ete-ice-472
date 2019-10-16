function En = energy(x,wintype,winamp,winlen)

% generate the window
win = (winamp*(window(str2func(wintype),winlen))).';

% enery calculation
x2 = x.^2;
En = winconv(x2,wintype,win,winlen);