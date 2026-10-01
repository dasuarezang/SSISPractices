function [x] = pols_digital_ds_jm(posi,ns,L)

%POLS Summary of this function goes here
%posi: posicion inicial del pulso
%ns: vector de ns
%L:longitud total

x =((ns>=posi)&(ns<L+posi));

end

