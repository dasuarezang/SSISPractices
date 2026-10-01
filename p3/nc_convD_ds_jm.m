function [y,ny] = nc_conv_ds_jm(x,nx,h,nh)

%% Funció que retorna la convolució entre els senyals x[n] i h[n]
% INPUTS de la funció
% x: Senyal d’entrada
% nx: Vector de mostres del senyal x
% h: Resposta impulsional
% nh: Vector de mostres del senyal h
% OUTPUTS de la funció
% y: Senyal de sortida
% ny: Vector de mostres del senyal y
... % Ordres que executa la funció
...

y = conv(x, h);
ny = nx(1)+nh(1):nx(end)+nh(end);


end

