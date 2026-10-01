%%Ej6.1

%1.1

A=3;
f1=500;
fm=8000;
Tm=1/fm;

T = (1/f1)*3;

t = 0:1/fm:T;
x = A*cos(2*pi*f1*t);

figure
stem(t,x);
xlabel("Tiempo (ms)");
ylabel("Amplitud (m)");
title("x[n]=x(nTs) con fm=8000hz ");
grid;

%Lx es igual a 6ms

%1.2

K=n.*fm;
Ln=length(K);
Xn= fft(x,Ln);

%Ln es igual a 49 muestras, debido a que muestreamos
%0,125ms y es el numero de muestras que tomamos para 
%muestrear tres periodos.

figure
stem(K,abs(Xn));
xlabel("Indices (K)");
ylabel("Amplitud (m)");
title(" X[K] con N=49");
grid;

%1.3

%xLos maximos quedan: el primero en K=3 y el segundo
%K= 46.

%1.4

F1 = 3/Ln;

ff1 = F1*fm;

error=abs(f1-ff1);


%1.5

Xnn= fft(x,64);
K64=0:63;


figure
stem(K64,abs(Xnn));
xlabel("Indices (K)");
ylabel("Amplitud (m)");
title(" X[K] con N=64");
grid;


F164 = 4/64;

ff164 = F164*fm;

error64=abs(f1-ff164);

%El error que obtenemos ahora es 0. Por lo que podemos decir 
%que la aproximación es mejor.

%1.6

F=K64./64;

figure
stem(F,abs(Xnn));
xlabel("Indices (K)");
ylabel("Amplitud (m)");
title(" TF amb frec. normalitzades con N=64");
grid;





















