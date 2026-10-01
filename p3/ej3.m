%EJ3

F=0:0.0005:0.5;

%3.1
[y, fm]= audioread("P3_radio.wav");
ny=1:fm;

y0=y(1:fm);

%3.2
Y=SSIS_TF(y0, ny, F);

figure

subplot(211)
plot(ny, y0);
xlabel("Indices [n]");
ylabel("Amplitud del señal");
title("y[n] completa");

subplot(212)
plot(F, abs(Y));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud de la señal");
title("Y(F) completa");

%3.3

%En el audio vemos que las distintas señales tiene frecuencia portadora 0.1, 0.25 y 0,42. Escogemos la señal que tiene frecuencia portadora de 0,25 hz y un ancho de
%banda de 0,16 

Fprima = 0.17:0.00016:0.33;

Y=SSIS_TF(y0, ny, Fprima);

figure
plot(Fprima, abs(Y));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud de la señal");
title("Y(F) del audio seleccionado");

%3,4
%Bs = 0,16


%3,5

FM = 0.42;

coseno = 2 * cos(2 * pi * FM * (0:length(y0)-1));
y1=y0.*coseno(:); %Multiplicas x elemento a elemento por coseno en formato columna
Y1=SSIS_TF(y1, ny, Fprima);

figure
subplot(211);
plot(ny, y1);
xlabel("Indices (n)");
ylabel("Amplitud del señal");
title("(y) y[n] modulada para no perder información");

subplot(212)
plot(Fprima,abs(Y1));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud del señal");
title("(Y) Transformada de y[n] modulada");

%3.6

fc=0.08;
n0=80;
nh=0:2*n0+1;

h1=2*fc*sinc(2*fc*(nh-n0));
H1=SSIS_TF(h1, nh, F);

figure
subplot(211)
stem(nh,h1);
xlabel("Indices (n)");
ylabel("Amplitud del señal");
title("(h1) Filtro enventanado y retardado muestreado");

subplot(212)
plot(F,abs(H1));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud del señal");
title("(H1) Filtro enventanado y retardado en frecuencia");

%3.7

[z, nz]=nc_convD_ds_jm(y1, ny, h1, nh);
Z=SSIS_TF(z, nz, F);

figure
subplot(211)
plot(nz,z);
xlabel("Indices (n)");
ylabel("Amplitud del señal");
title("(z[n]) Audio de la radio muestreado");

subplot(212)
plot(F,abs(Z));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud del señal");
title("(Z(F)) Audio de la radio en frecuencia");

%3.8

sound(z, fm);

%En el extracto de la radio de 0.25Hz se escucha "Bon matí, bon dia som-hi."
%En el extracto de la radio de 0.1Hz se escucha "Bon dia Catalunya."
%En el extracto de la radio de 0.42Hz se escucha "Son les 8h en punt."







