clear all;
clc;
%mi rut es 18.798.547-1
a=1;b=8;c=7;d=9;e=8;f=5;g=4;h=7;i=1;
B = ((a+b)*c)
r = ((i+e)*h)/((b+c+e)*10)
R = ((i+e)*(a+c))/(b+c+e+g+h)
%funcion exponencial decreciente
n = 0 :1 :20; x = B*r.^n;
subplot 331; stem(n,x);
xlabel('n'); title('S. Exponencial decreciente'); grid
m = 0:1:20; y=B*R.^m;
%funcion exponencial creciente
subplot 332; stem(m,y);
xlabel('m'); title('S. Exponencial creciente');grid
%funcion exponencial compleja
w = [-20:1:20]; q=-((b+c+1)/60)+(((a*h*d)+1)/60)*j; z=exp(q*w);
subplot 333; stem(w,real(z)); title('Parte real'); xlabel('w');
subplot 334; stem(w,imag(z)); title('Parte imag'); xlabel('w');
subplot 335; stem(w,abs(z)); title('Magnitud'); xlabel('w');
subplot 336; stem(w,(180/pi)*angle(z)); title('Fase[*]'); xlabel('w');
%funsion sinusoidal
j = [0:1:30];
u = 3*cos(2*pi*((2+d+f)/90)*j+pi/3);
subplot 337; stem(j,u);
xlabel('j'); title('S. sinusoidal'); grid
%funcion impulso
o = [-b:b];
p = [(o-a)==0];
subplot 338; stem(o,p); title('S.Impulso'); xlabel('o'); grid
%funcion escalon
k = [-f:f];
K = [(k-a)>=0];
subplot 339; stem(k,K); title('S. Escalon'); xlabel('k'); grid