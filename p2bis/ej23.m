%%ej2 

A=1;
B=0.8;

f0=500;
f1=600;

T=0.04;
fm=1;
f=-2000:fm:2000;

y1 = (A*T)/2 * sinc(T*(f-f0))+(A*T)/2 * sinc(T*(f+f0))+(B*T)/2 * sinc(T*(f-f1))+(B*T)/2 * sinc(T*(f+f1));

y2 = (A*T)/4 * sinc(T/2*(f-f0)).^2+(A*T)/4 * sinc(T/2*(f+f0)).^2+(B*T)/4 * sinc(T/2*(f-f1)).^2+(B*T)/4 * sinc(T/2*(f+f1)).^2;

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


T=0.01;
y3 = (A*T)/2 * sinc(T*(f-f0))+(A*T)/2 * sinc(T*(f+f0))+(B*T)/2 * sinc(T*(f-f1))+(B*T)/2 * sinc(T*(f+f1));
y4 = (A*T)/4 * sinc(T/2*(f-f0)).^2+(A*T)/4 * sinc(T/2*(f+f0)).^2+(B*T)/4 * sinc(T/2*(f-f1)).^2+(B*T)/4 * sinc(T/2*(f+f1)).^2;


figure

subplot(2,1,1);
plot(f,abs(y3));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud (m)");
grid
title("Transformada |Y3(F)|");

subplot(2,1,2);
plot(f,abs(y4));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud (m)");
grid
title("Transformada |Y4(F)|");

figure

subplot(2,1,1);
plot(f,20*log10(abs(y3)));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud (dB)");
ylim([-100,0]);
grid
title("Transformada dB(20 ∗ log10|Y3(f)|)");

subplot(2,1,2);
plot(f,20*log10(abs(y4)));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud (dB)");
ylim([-100,0]);
grid
title("Transformada dB(20 ∗ log10|Y4(f)|)");

%Es millor en T=40ms perque es veu més definida la senyal