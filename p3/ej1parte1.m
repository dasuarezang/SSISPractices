%EJ1

%1.1
F=-0.5:0.001:0.5;

L=11;
n=-10:1:10;

x=pols_digital_ds_jm(0,n,L);

X=SSIS_TF(x,n,F);

figure

subplot(2,1,1);
plot(F, abs(X));
xlabel("Frecuencia (Hz)");
ylabel("Modulo de X[F]");
title("Modulo y Fase de X[f]");
grid;

subplot(2,1,2);
plot(F, angle(X));
xlabel("Frecuencia (Hz)");
ylabel("Fase de X[f]");
grid;

%1.2

X0=((sin(pi*F*L))./((sin(pi*F))).*exp(-1i*pi*(L-1)*F));

figure

subplot(2,1,1);
plot(F, abs(X0));
xlabel("Frecuencia (Hz)");
ylabel("Modulo de X[F]");
title("Modulo y Fase de X[f]");
grid;

subplot(2,1,2);
plot(F, angle(X0));
xlabel("Frecuencia (Hz)");
ylabel("Fase de X[f]");
grid;

%El ancho del lobulo principal es de 0,2Hz y el valor maximo es de 10,89,
%mas o menos 11

