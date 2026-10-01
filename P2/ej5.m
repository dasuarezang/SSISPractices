
tm = 0.001;

txi=nx(1)*tm;
txf=nx(end)*tm;

tx=txi:tm:txf;

thi=nh(1)*tm;
thf=nh(end)*tm;

th=thi:tm:thf;

tyi=tx(1)+th(1);
tyf=tx(end)+th(end);

ty=tyi:tm:tyf;