function [X] = ds_jm_SSIS_TF(x,t, f)
%DS_JM_SSIS_TF Summary of this function goes here
%   Detailed explanation goes here

tm=t(2) - t(1);
fm=1/tm;

n=t.*fm;
F=f/fm;

X= (SSIS_TF(x, n, F))/fm;

end

