fstop = 3600;
fpass = 4000;
stop = 50;
pass = 1;
fs = 10000;

d = designfilt('highpassfir','StopbandFrequency',fstop, ...
  'PassbandFrequency',fpass,'StopbandAttenuation',stop, ...
  'PassbandRipple',pass,'SampleRate',fs,'DesignMethod','equiripple');

freqz(d.Coefficients,1,1024,fs)



