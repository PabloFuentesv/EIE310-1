close all;
clear all;

load h.txt 
subplot 221;  
plot(h, '.'); grid 
xlabel('n'); 
title('h(n)'); 

f = 0 : 100 : 200000; 
M = abs(freqz(h,1,f,176400)); 

subplot 223; 
semilogy(f/1000, M); grid;  
axis([0 200 0.000001 10]); 
xlabel('f[kHz]'); 
title('Mag[H(f)]');  
% Como 3 de cada 4 muestras son cero, el filtro digital 
% atenúa 4 veces. Se compensa multiplicando por 4 
y = 4 * y; 

% Grafica 'y'. Como el filtro digital introduce un retardo de  
% 258/2 = 129 muestras, grafica 'y' desplazado 129 muestras  
% para facilitar la comparación con x4 
subplot 224; stem(y); axis([429 469 -0.1 +0.1]); grid 
title('4: Secuencia x4 filtrada'); xlabel('n'); 

% Calcula la magnitud del espectro de 'y' entre 0 y 200 kHz 
M2 = abs(freqz(y, 1, f, 176400)); 

% Grafica M2 
subplot 223; semilogy(f/1000, M2); axis([0 200 0.01 10]); grid;
title('3: Espectro de secuencia x4 filtrada');  
xlabel('f [kHz]'); ylabel('Magnitud')