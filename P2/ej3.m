%Convolucion

Lx=8;
Lh=6;




nx = -5:15;
x = pols(0,nx, Lx);

nh = -5:15;
h = pols(2, nh, Lh);


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