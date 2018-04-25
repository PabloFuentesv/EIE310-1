clear all;
close all;
clc;
[x, n] = impulso(0, -20, 20); 
w = [0 : 1/200 : 1] * pi; 
[X] = dtft(x, n, w); 
subplot 221; plot(w/pi, abs(X)); 
xlabel('w / Pi [rad/m]'); 
title('DTFT de impulso'); grid