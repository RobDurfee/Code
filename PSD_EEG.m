function [ output_args ] = PSD_EEG( input_args )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    Fs = 256; 
    nfft = 2^nextpow2(length(input_args));
    Pxx = abs(fft(input_args,nfft)).^2/length(input_args)/Fs;

    % Create a single-sided spectrum
    Hpsd = dspdata.psd(Pxx(1:length(Pxx)/2),'Fs',Fs);  
    figure(4);
    plot(Hpsd); 
output_args = Hpsd;

