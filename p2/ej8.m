%EJ8

T1=2;
tm=0.01;
t=-10:tm:10;

x=(1-(abs(t)/T1)).*pols(-2,t,4);
y=nc_sist_integrador(x,tm);

figure

subplot(2,1,1)
plot(t,x);
xlabel('t');
ylabel('Amplitud');
title('x(t)');

subplot(2,1,2)
plot(t,y);
xlabel('t');
ylabel('Amplitud');
title('y(t)');