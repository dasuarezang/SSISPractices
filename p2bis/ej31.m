%EJ 3.1 y EJ 3.2

fm=1000;
tm=(1/fm);
f0=50;
t=0:tm:1;

x=cos(2*pi*f0*t);

plot(t,x);
grid;
xlabel("Tiempo (t)");
ylabel("Amplitud (m)");
title("x(t) = cos(2pi*fo*t)");

y1=sign(x);
y2=abs(x);
y3=x+0.4*(x).^2;

figure
subplot(311);
grid;
plot(t,y1);
xlabel("Tiempo (t)");
ylabel("Amplitud (m)");
title("y1(t) = sign(x)");

subplot(312);
plot(t,y2);
grid;
xlabel("Tiempo (t)");
ylabel("Amplitud (m)");
title("y2(t) = abs(x)");

subplot(313);
plot(t,y3);
grid;
xlabel("Tiempo (t)");
ylabel("Amplitud (m)");
title("y3(t) = x + 0,4*x^2");
