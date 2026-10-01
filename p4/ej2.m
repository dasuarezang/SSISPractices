%ej 2

%2.1

fm=12;
a=1;
tm=1/fm;

t=-5:tm:5;

x=exp(-a*abs(t));


figure
plot(t,x);
xlabel("Temps (s)");
ylabel("Amplitud (m)");
title("x(t)");
grid;

%2.2

f=-fm/2:fm/1000:fm/2;
X=(2*a)./(a^2+(2*pi*f).^2);

figure
plot(f, abs(X));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud (m)");
title("|X(f)|");
grid;

%2.3

Xc=ds_jm_SSIS_TF(x, t, f);

figure
plot(f, abs(X));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud (m)");
hold on;
plot(f, abs(Xc));
title("|X(f)| teorico (azul) y funcion calc (naranja)");
grid;

%2.4

f0=-3*fm:(6*fm)/1000:3*fm;

Xc0=ds_jm_SSIS_TF(x, t, f0);

figure
plot(f0, abs(X));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud (m)");
hold on;
plot(f0, abs(Xc0));
xlim ([-30 30]);
title("|X(f)| teorico (azul) y funcion calc (naranja) desde -3fm a 3fm");
grid;

%2.5

F=-3:6/1000:3;
n=t/tm;

Xc1= SSIS_TF(x,n,F);


figure
plot(F, abs(Xc0));
xlabel("Frecuencia ");
ylabel("Amplitud (m)");
title("|X(F)| funcion calc desde -3 a 3");
grid;


%2.6

figure
subplot (211)
plot(f0, abs(Xc0));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud (m)");
title("|X(f)|");
grid;

subplot (212)
plot(F, abs(Xc1));
xlabel("Frecuencia");
ylabel("Amplitud (m)");
title("|X(F)|");
grid;

%La diferencia entre la transformada digital y la analogica
%es que la primera sus frecuencias son num reales, mientras
%que en la digital sus frecuencias estan normalizadas, son unitarias.
%Debido a que introducimos el factor 1/Ts multiplicando. A parte la señal
%digital se repetiria cada periodo, aunque en la grafica no se llega a
%apreciar.

%2.7

%2.7.1

Tm1=1;
fm1=1/Tm1;

n=-5:Tm1:5;

x1=exp(-a*abs(n*Tm1));

figure
stem(n, x1);
xlabel("Indices");
ylabel("Amplitud");
title("x(nTm1)");
grid;

%2.7.2

f1=-3*fm1:(6*fm1)/1000:3*fm1;

X1tf= (2*a)./(a^2+(2*pi*f1).^2);
X1ca= ds_jm_SSIS_TF(x1, n*Tm1, f1);

F1=-3:6/1000:3;

X1cd=SSIS_TF(x1,n, F);

figure
subplot(311)
plot(f1,X1tf);
xlabel("Frecuencia (Hz)");
ylabel("Amplitud (m)");
title("X1(f) teorica");
grid;

subplot(312)
plot(f1,abs(X1ca));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud (m)");
title("|X1(f)| calculada");
grid;

subplot(313)
plot(F,abs(X1cd));
xlabel("Frecuencia");
ylabel("Amplitud");
title("|X1(F)| calculada");
grid;

%2.7.3

%Podemos ver que cuando bajamos la frecuencia de muestreo
%la señal queda como suavizada. Esto debido a que tenemos 
%menos muestras, por lo que queda menos definida.