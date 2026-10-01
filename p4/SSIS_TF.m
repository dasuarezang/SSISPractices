function X = SSIS_TF(x,n,F)
%% Funció que retorna la la TF del senyal d’entrada x(t)
% INPUTS de la funció
% x: Senyal d’entrada
% n: Vector de mostres del senyal x
% F: Vector de freqüències on volem mesurar la TF
% OUTPUTS de la funció
% X: TF del senyal x

x = x(:)'; % Conversió del vector x a vector fila
F = F(:)'; % Conversió del vector F a vector fila
n = n(:); % Conversió del vector n a vector columna
X = x*exp(-1i*2*pi*n*F); % Calcul de la TF (sumatori)

end