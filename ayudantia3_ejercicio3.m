close all;
clear all;
n=0:10;
x=0.4.^n;
w=[0:1/200:1]*pi;
X=dtft(x,n,w);
subplot 331; plot(w/pi, abs(X)); grid 
xlabel('w / Pi [rad/m]'); title('Magnitud') 
subplot 332; plot(w/pi, unwrap(angle(X))/pi); grid 
xlabel('w / Pi [rad/m]'); title('Angulo / Pi [rad]')