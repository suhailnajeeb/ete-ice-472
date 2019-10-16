function zc = zerocross(x,wintype,winamp,winlen)
% generate x[n] and x[n-1]
x1 = x;
x2 = [0, x(1:end-1)];

% generate the first difference
firstDiff = sgn(x1)-sgn(x2);

% magnitude only
absFirstDiff = abs(firstDiff);

% lowpass filtering with window
zc = winconv(absFirstDiff,wintype,winamp,winlen);
