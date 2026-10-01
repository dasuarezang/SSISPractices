%EJ10

T=2;
tm=0.01;
tx=0:tm:10;
th=-10:tm:10;

x=exp(-2 * tx);

h=(1/T)*pols(-1,th,2);

[y,ty]=nc_convA(x,tx,h,th,tm);

figure
subplot(3,1,1);
plot(tx,x);
xlabel('t');
ylabel('Amplitud');
title('x(t)');

subplot(3,1,2);
plot(th,h);
xlabel('t');
ylabel('Amplitud');
title('h(t)');

subplot(3,1,3);
plot(ty,y);
xlabel('t');
ylabel('Amplitud');
title('y(t)');

