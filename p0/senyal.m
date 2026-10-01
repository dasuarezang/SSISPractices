%%senyal

fo=440;
T=1.5;
fm=8000;
tm=1/fm;
t= 0:tm:T;
x=cos(2*pi*fo*t);
soundsc(x,fm);
plot(t(1:100),x(1:100))