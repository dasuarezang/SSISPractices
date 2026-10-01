%EJ 3.3 y 3.4

fm=1000;
tm=(1/fm);
f0=50;
t=0:tm:1;

x=cos(2*pi*f0*t);

y1=sign(x);
y2=abs(x);
y3=x+0.4*(x).^2;

[tfx, ejef] =CalculaTF(x,t);
[tfy1, ejef1] =CalculaTF(y1,t);
[tfy2, ejef2] =CalculaTF(y2,t);
[tfy3, ejef3] =CalculaTF(y3,t);


plot(ejef,abs(tfx));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud (m)");
title("X(f) = TF(cos(2pi*fo*t))");
grid;

figure
subplot(311);
plot(ejef1,abs(tfy1));
grid;
xlabel("Frecuencia (Hz)");
ylabel("Amplitud (m)");
title("Y1(f) = TF(sign(x))");

subplot(312);
plot(ejef2,abs(tfy2));
grid;
xlabel("Frecuencia (Hz)");
ylabel("Amplitud (m)");
title("Y2(f) = TF(abs(x))");

subplot(313);
plot(ejef3,abs(tfy3));
grid;
xlabel("Frecuencia (Hz)");
ylabel("Amplitud (m)");
title("Y3(f) = TF(x + 0,4*x^2)");

%La frecuencia dels harmonics del cos(...) estan +-50hz
%La frec. dels harmonics del sing(x) són -+-50hz, +-150hz, +-250hz
%La frec. dels harmonics es 0.2hz, +-100hz
%La frec. dels harmonics es +-50hz, 0hz i +-100hz
