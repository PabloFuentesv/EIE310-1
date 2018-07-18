close all
clear all

fb = 200;
ft = 250;
Fs = 1000;
N = 30;
fmin = 0;
fmax = 500;
m1 = 1e-6;

wn = [2*fb/Fs,2*ft/Fs];
b = fir1(N-1, wn, 'bandpass', hanning(N));
t = fir1(N-1, wn, 'bandpass', hamming(N));
k = fir1(N-1, wn, 'bandpass', kaiser(N,10));
f = [fmin:(fmax-fmin)/1023:fmax];

Hb = freqz(b,1,f,Fs);
Ht = freqz(t,1,f,Fs);
Hk = freqz(k,1,f,Fs);

n=[1 : N];

subplot 411; stem(n,b); grid ; xlabel('n'); title('h(n)')
subplot 412; semilogy(f, abs(Hb)); grid
axis([0 500 m1 1.1]); xlabel('f[Hz]'); title('Mag(Hb)')
subplot 413; semilogy(f, abs(Ht)); grid
axis([0 500 m1 1.1]); xlabel('f[Hz]'); title('Mag(Ht)')
subplot 414; semilogy(f, abs(Hk)); grid
axis([0 500 m1 1.1]); xlabel('f[Hz]'); title('Mag(Hk)')