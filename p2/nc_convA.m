function [y,ty] = nc_convA(x,tx,h,th,tm)
%% Funció que retorna la convolució analògica entre els senyals x(t) i h(t)
% INPUTS de la funció
% x: Senyal d’entrada
% tx: Vector de temps del senyal x
% h: Resposta impulsional
% th: Vector de temps del senyal h
% tm: Temps de mostratge
% OUTPUTS de la funció
% y: Senyal de sortida
% ty: Vector de temps del senyal y


y = conv(x,h)*tm;
ty = tx(1)+th(1):tm:tx(end)+th(end);


end

