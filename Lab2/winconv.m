function y = winconv(x,wintype,A,L)

% generate the window
w1 = (window(str2func(wintype),L)).'; A = A(:).';
w = A.*w1;

% perform the convolution using FFT
NFFT = 2^(nextpow2(length(x)+L));
X = fft(x,NFFT); W = fft(w,NFFT);
Y = X.*W;
y = ifft(Y,NFFT);