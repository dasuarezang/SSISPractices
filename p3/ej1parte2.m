%1.3

A=3;
L=100;
F1=1/10;
F=-0.5:0.001:0.5;
n=-150:1:150;

P=pols_digital_ds_jm(0,n,L);

x2=A*cos(2*pi*F1*n).*P;

X2=SSIS_TF(x2,n,F);

figure
plot(F, abs(X2));
xlabel("Frecuencia (Hz)");
ylabel("Modulo de X2(f)");
title("Modulo de la transformada del coseno enventanado de f1=1/10 y A=3 (SSIS_TF)");
grid;

%1.4

X2an=(A/2)*((sin(pi*(F-F1)*L)./sin(pi*(F-F1)))+(sin(pi*(F+F1)*L)./sin(pi*(F+F1))));

figure
plot(F, abs(X2an));

xlabel("Frecuencia (Hz)");
ylabel("Modulo de X2(f)");
title("Modulo de la transformada del coseno enventanado de f1=1/10 y A=3 (ANALITICAMENTE)");
grid;
