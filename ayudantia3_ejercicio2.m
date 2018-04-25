clear all;
close all;
clc;
n = -1 : 3; x = [5 4 3 2 1]; 
w = [0 : (1/200) : 1]*pi; 
X = dtft(x, n, w); 
subplot 331; plot(w/pi, abs(X)); grid 
xlabel('w / Pi [rad/m]'); title('Magnitud') 
subplot 332; plot(w/pi, unwrap(angle(X))/pi); grid 
xlabel('w / Pi [rad/m]'); title('Angulo / Pi [rad]')