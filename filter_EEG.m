%data_raw = rdsamp('chbmit/chb01/chb01_01.edf', 'begin', '00:00:00', 'stop','00:00:30','sigs',1,2,3,4,5,'hires',false);
                        %^^^use this only for testing this function^^^ 

                        
%transposing and averaging signals 


function [output_args] = filter_EEG(input_args)
%input(:,1) = [];
%data_raw_transpose = transpose(data_raw);
%data_post_transpose = transpose(mean(data_raw_transpose));
    
%Notch frequency 
 
fs = 256;             %#sampling rate original is 20000
f0 = 60;                %#notch frequency
fn = fs/2;              %#Nyquist frequency
freqRatio = f0/fn;      %#ratio of notch freq. to Nyquist freq.

notchWidth = 0.1;       %#width of the notch

%Compute zeros
zeros = [exp( sqrt(-1)*pi*freqRatio ), exp( -sqrt(-1)*pi*freqRatio )];

%#Compute poles
poles = (1-notchWidth) * zeros;

b = poly( zeros ); %# Get moving average filter coefficients
a = poly( poles ); %# Get autoregressive filter coefficients



%#filter signal x
%y = filter(b,a,data_post_transpose);

%spectrogram(data_post_transpose);
                %^^^use this only for testing this function^^^

output_args = filter(b,a,input_args);
 
  
  
  