close all
clear all
b1=[0.05 0.45 0.56 0.44 0.05];
b2=[3.2 0.25 0.4 0.6 0.25];

b1=b1/(sum(b1));
b2=b2/(sum(b2));

[H1,w1] = freqz(b1,1);
[H2,w2] = freqz(b2,1);

n1 = [0:0.1:3.9]*pi; x1=square(n1);
n2 = [0:0.1:3.9]*pi; x2=square(n2);

y1 = conv(x1,b1);
y2 = conv(x2,b2);

subplot 221; stem(x1); title('x1 (entrada)');
axis([0 45 -1.5 1.5]); xlabel('n'); grid
subplot 222; stem(y1); title('y1 (salida)');
axis([0 45 -1.5 1.5]); xlabel('n'); grid

subplot 223; stem(x2); title('x2 (entrada)');
axis([0 45 -1.5 1.5]); xlabel('n'); grid
subplot 224; stem(y2); title('y2 (salida)');
axis([0 45 -1.5 1.5]); xlabel('n'); grid