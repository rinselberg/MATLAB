% DFT_of_Delta_PLUS_Unit_Delay_of_Delta.m

% Discrete Fourier Transform of x[n] = Delta[n] + Delta[n-1]
% ANALYTIC solution
% omega -> "w", to conform to MATLAB syntax

function [y] = DFT_of_Delta_PLUS_Unit_Delay_of_Delta(w)
    y = 1 + exp(-i*w)
end


