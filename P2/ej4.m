%Convolucion

Lx=11;


nx = -5:20;
x = pols(5,nx, Lx);

nh= 0:20;
h = 0.9.^(nh);

[y, ny]=nc_convD(x,nx,h,nh);
figure
subplot(3,1,1);
stem(nx, x);
xlabel('n');
ylabel('Amplitud');
title('Sortida x[n]');

subplot(3,1,2);
stem(nh, h);
xlabel('n');
ylabel('Amplitud');
title('Sortida h[n]');

subplot(3,1,3);
stem(ny, y)
xlabel('n');
ylabel('Amplitud');
title('Sortida y[n]');