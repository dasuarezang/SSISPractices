%%EJ 1

A=1;
f0=500;
T=0.02;
fm=1;
f=-2000:fm:2000;

y1=(A*T/2)*sinc(T*(f-f0))+(A*T/2)*sinc(T*(f+f0));
y2=(A*T/4)*(sinc(T/2*(f-f0))).^2+(A*T/4)*(sinc(T/2*(f+f0))).^2;


figure

subplot(2,1,1);
plot(f,abs(y1));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud (m)");
grid
title("Transformada |Y1(F)|");

subplot(2,1,2);
plot(f,abs(y2));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud (m)");
grid
title("Transformada |Y2(F)|");


figure

subplot(2,1,1);
plot(f,20*log10(abs(y1)));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud (dB)");
ylim([-100,0]);
grid
title("Transformada dB(20 ∗ log10|Y1(f)|)");

subplot(2,1,2);
plot(f,20*log10(abs(y2)));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud (dB)");
ylim([-100,0]);
grid
title("Transformada dB(20 ∗ log10|Y2(f)|)");




%El valor maxim de y1 es de: 0,01m
%El valor maxim de y2 es de: 0,01m

%L'amplitud del lòbul principal de y1 es de: 100Hz
%L'amplitud del lòbul principal de y2 es de: 100Hz

%Les freqüències exactes del màxim de y1 es de: +-500Hz
%Les freqüències exactes del màxim de y2 es de: +-500Hz

%Els dos zeros més propers a f0 de y1 son: +-450 y +-550
%Els dos zeros més propers a f0 de y2 son: +-450 y +-450

%La diferència entre el valor absolut del màxim i el del primer lòbul
%secundari de la TF en dB de y1 es de: -15dB
%La diferència entre el valor absolut del màxim i el del primer lòbul
%secundari de la TF en dB de y2 es de: -26,5 dB

%Les principals diferencies entre els dos casos:
%La principal diferencia es la diferencia entre el màxim absolut y el del
%primer lóbul secundari, ya que un sinc esta elevat a la dos i l'altre no.
%El sinc elevat a la dos cau més rapid.