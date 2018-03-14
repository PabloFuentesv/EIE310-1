%RUT: 18.798.547-1

clear
clc


A=1; B=8; C=7; D=9; E=8; F=5; G=4; H=7; I=1;
t=0 : 0.3 : 30 ; v = exp(-((B+A)/(2*C*(D+E)))*t).*sin(t);
subplot 121; plot (t, v); title('PLOT');
xlabel('Tiempo [seg]'); ylabel('Volts'); grid;
subplot 122; stem(t, v); title('STEM');
xlabel('Tiempo [seg]'); ylabel('Volts'); grid;