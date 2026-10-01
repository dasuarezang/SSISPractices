%EJ2

%2.1

[x, fm]=audioread("audio.mp3");

posi=50000;
L4=fm*4;
n=(posi:posi+L4-1);
F=-0.5:0.001:0.5;

x0=x(posi:posi+L4-1);

X0=SSIS_TF(x0,n,F);

figure
subplot(211)
plot(n,x0);
xlabel("Indices (n)");
ylabel("Amplitud del señal");
title("(x0) Señal del audio en tiempo");

subplot(212)
plot(F,abs(X0));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud del señal");
title("(X0) Modulo del señal del audio en frecuencia");

%2.2

fc=0.2;
n0=80;
nh=0:2*n0+1;

h0=2*fc*sinc(2*fc*(nh-n0));
H0=SSIS_TF(h0,nh,F);

figure
subplot(211)
stem(nh,h0);
xlabel("Indices (n)");
ylabel("Amplitud del señal");
title("(h0) Filtro enventanado y retardado muestreado");

subplot(212)
plot(F,abs(H0));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud del señal");
title("(H0) Filtro enventanado y retardado en frecuencia");

%2.3/2.4

[x, nx]=nc_convD_ds_jm(x0, n, h0, nh);
X=SSIS_TF(x, nx, F);

figure
subplot(211);
plot(nx, x);
xlabel("Indices (n)");
ylabel("Amplitud del señal");
title("(x) Convolución del audio con el filtro enventanadado (h0)");

subplot(212)
plot(F,abs(X));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud del señal");
title("(X) Transformada de la convolución del audio con el filtro enventanadado(h0)");

%2.5
%Necesitamos una fm >= 0,2 Hz
%2cos(2pi*FM*n);
FM=0.2;


coseno = 2 * cos(2 * pi * FM * (0:length(x)-1));
y=x.*coseno(:);%Multiplicas x elemento a elemento por coseno en formato columna
Y=SSIS_TF(y, nx, F);

figure
subplot(211);
plot(nx, y);
xlabel("Indices (n)");
ylabel("Amplitud del señal");
title("(y) y[n] modulada para no perder información");

subplot(212)
plot(F,abs(Y));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud del señal");
title("(Y) Transformada de y[n] modulada");

%2.6

sound(y, fm);

%Al escuchar la señal no podemos entender lo que suena, esto ya que la
%señal esta desplazada en frecuencia y solo percibimos ruido. Esto porque
%el sonido se vuelve agudo, al llevarlo a altas frecuencias.

%2.7

y1=y.*coseno(:);
Y1=SSIS_TF(y1, nx, F);

figure
subplot(211);
plot(nx, y1);
xlabel("Indices (n)");
ylabel("Amplitud del señal");
title("(y1) y1[n] desmodulada");


subplot(212)
plot(F, abs(Y1));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud del señal");
title("(Y1) Y1(F) desmodulada en frec.");

%2.8

%La diferencia es que en el modulo de Y1 tienes la misma señal de X1,
%desplaza a +-0.4 y a parte en 0 tienes la misma señal que en X1
%multiplicada por 2.

%2.9

%En +-0.4.

%2.10
y10=0.5*y1; %Nuestro filtro tendria que tener una cte. multiplicadora de 0.5
[z, nz]=nc_convD_ds_jm(y10, nx , h0, nh);
Z=SSIS_TF(z, nz, F);

figure
subplot(211)
plot(nz, z);
xlabel("Indices [n]");
ylabel("Amplitud de señal");
title("z[n]");

subplot(212)
plot(n, x0);
xlabel("Indices [n]");
ylabel("Amplitud de señal");
title("x[n]");

figure
subplot(211)
plot(F, abs(Z));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud de señal");
title("Z(F)");

subplot(212)
plot(F, abs(X0));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud de señal");
title("X(F)");

%no hay diferencia alguna, ya que hemos hecho que el filtro atenue la
%amplitud de nuestra señal a la mitad, si no estaria al doble de la
%amplitud de la señal x0.

sound(z, fm);

%Ya no se escucha ruido, ahora ya se escucha bien el mensaje. 






