%EJ9

T1=2;
tm=0.01;
t=-10:tm:15;

x=(1-(abs(t)/T1)).*pols(-2,t,4);

%Delta Dirac
delta = zeros(size(t));
delta(t == 0) = 1/tm;

h=nc_sist_integrador(delta,tm);

[y,ty]=nc_convA(x,t,h,t,tm);

figure
subplot(3,1,1);
plot(t,x);
xlabel('t');
ylabel('Amplitud');
title('x(t)');
xlim([-10 10]);

subplot(3,1,2);
plot(t,h);
xlabel('t');
ylabel('Amplitud');
title('h(t)');
xlim([-10 10]);

subplot(3,1,3);
plot(ty,y);
xlabel('t');
ylabel('Amplitud');
title('y(t)');
xlim([-10 10]);







