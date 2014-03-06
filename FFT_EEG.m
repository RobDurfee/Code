function [ output_args ] = FFT_EEG( input_args)
% Uses Fast Fourier Transform to accept doubles and return the amplitudes
% of the given range of frequencies
% beware, performs absolute value of data as intermediate var 


Fs = 256;                    % Sampling frequency
T = 1/Fs;                     % Sample time
L = 153600;                     % Length of signal

plot(Fs*input_args)
title('Signal Corrupted with Zero-Mean Random Noise')
xlabel('time (milliseconds)')



output_args = abs(fft(input_args)) ;


