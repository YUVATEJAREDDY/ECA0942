// Design a FIR filter using Frequency Sampling method.
//frequency sampling method
clc;
clear;
close;
N=input("Enter the value of N:");
U=input("Enter the value of U:");
for n=0+U:1:N-1+U
h(n)=(1+cos(2*%pi*(7-n)/N))/N;
end
[hz,f]=frmag(h,256);
hz_dB=20*log10(hz)./max(hz);
figure;
plot(2*f,hz_dB);
a=gca();
xlabel('Frequency w*pi');
ylabel('Magnitude in dB');
title('Frequency Response of FIR LPF');
xgrid(2);
