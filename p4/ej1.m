%ej1

%1.2

fc=200;
fm=1000;
tm=1/fm;

f=-0.5*fm:fm/1000:0.5*fm;
t=-0.1:tm:0.1;
F=-0.5:1/1000:0.5;
n=t/tm;

x=2*fc*(sinc(2*fc*t)).^2;

%La TF de x(t) es un triangle que va de -2fc a 2fc
%Para evitar solapamiento necesitamos que fs>4fc(Nyquist)

%1.3

X=ds_jm_SSIS_TF(x,t,f);

figure
subplot(211)
plot(t, x);
xlabel("Temps (s)");
ylabel("Amplitud (m)");
title("x(t)");
grid;


subplot(212)
plot(f, abs(X));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud (m)");
title("|X(f)|");
grid;



%Transformada de x[n] 

X1=SSIS_TF(x,n,F);
figure
plot(F, abs(X1));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud (m)");
title("TF|x[n]|");
grid;


%1.4
fp= -3*fm:(6*fm)/1000:3*fm;
t=-0.1:tm:0.1;
Fp= -3:1/1000:3;

Xp=ds_jm_SSIS_TF(x,t,fp);
X1p=SSIS_TF(x,n,Fp);

figure
subplot(211)
plot(fp, abs(Xp));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud (m)");
title("|Xap(f)| con fm=1000hz");
grid;


subplot(212)
plot(Fp, abs(X1p));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud (m)");
title("|Xdp(F)| con fm=1000hz");
grid;

%1.5
fmp=300;
tmp=1/fmp;
fpp= -3*fmp:(6*fmp)/1000:3*fmp;
tp=-1/3:tmp:1/3;
Fpp= -3:1/1000:3;

x0=2*fc*(sinc(2*fc*tp)).^2;

X0p=ds_jm_SSIS_TF(x0,tp,fpp);
X10p=SSIS_TF(x0,n,Fpp);

figure
subplot(211)
plot(fpp, abs(X0p));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud (m)");
title("|Xap(f)| con fm=300hz");
xlim([-800 800]);
ylim([1 2]);
grid;


subplot(212)
plot(Fpp, abs(X10p));
xlabel("Frecuencia (Hz)");
ylabel("Amplitud (m)");
title("|Xdp(F)| con fm=300hz");
ylim([350 500]);
grid;

%Quin efecte estem observant i a qué és degut?
%El efecto es el aliasing, ya que como las señales se solapan y se acaban
%sumando; por culpa de ese fenomeno, tenemos que el valor maximo de la
%amplitud ha aumentado y las señales no llegan a tocar el eje x.
