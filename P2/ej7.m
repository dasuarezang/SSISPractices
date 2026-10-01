%EJ7

tm=0.001;
t=-5:tm:10;

Tx=2;
x=pols(-(Tx/2),t,Tx);

Th=4;
h=pols(0,t,Th);

[y,ty]=nc_convA(x,t,h,t,tm);

figure
subplot(3,1,1);
plot(t,x);
xlabel('t');
ylabel('Amplitud');
title('x(t)');

subplot(3,1,2);
plot(t,h);
xlabel('t');
ylabel('Amplitud');
title('h(t)');

subplot(3,1,3);
plot(ty,y);
xlabel('t');
ylabel('Amplitud');
title('y(t)');