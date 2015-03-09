% plot_DFTs_of_Chapter_3.m


Fs = 1     % sampling frequency (set to 1 Hz)
T = 1/Fs   % sample time (1 second), this is not used
L = 100    % length of signal (100 seconds) 

% set plot range for omega from 0 to 2*pi
% omega -> "w", to conform to MATLAB syntax
w = linspace(0,2*pi,L)


% plot DFT of x[n] = Delta[n] + Delta[n-1] using the ANALYTIC solution
subplot(2,2,1)
plot(w,abs(DFT_of_Delta_PLUS_Unit_Delay_of_Delta(w)))
title('ANALYTIC: DFT of x[n] = Delta[n] + Delta[n-1]')

% define x[n] = Delta[n] + Delta[n-1] as a vector for the "MATLAB" solution
x = [1, 1, zeros(1,L-2)]

% X = MATLAB solution for DFT of x[n]
X = fft(x) 

% Plot single-sided amplitude spectrum (MATLAB solution)
subplot(2,2,2)
plot(w,abs(X)) 
title('MATLAB: DFT of x[n] = Delta[n] + Delta[n-1]')


% plot DFT of x[n] = Delta[n] - Delta[n-1] using the ANALYTIC solution
subplot(2,2,3)
plot(w,abs(DFT_of_Delta_MINUS_Unit_Delay_of_Delta(w)))
title('ANALYTIC: DFT of x[n] = Delta[n] - Delta[n-1]')

% define x[n] = Delta[n] - Delta[n-1] as a vector for the "MATLAB" solution
x = [1, -1, zeros(1,L-2)]

% X = MATLAB solution for DFT of x[n]
X = fft(x) 

% Plot single-sided amplitude spectrum (MATLAB solution)
subplot(2,2,4)
plot(w,abs(X)) 
title('MATLAB: DFT of x[n] = Delta[n] - Delta[n-1]')
