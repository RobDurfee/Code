%Main function
%Commented out rdsamp lines are for using data other than logged
%'rawdata.mat' file



%data = rdsamp('chbmit/chb01/chb01_01.edf', 'begin', '00:00:00', 'stop','00:01:00','sigs',1,'hires',false);
%data(:,1) = [];


load('rawdata.mat');%loads up the mat file of pure data ripped earlier with rdsamp, 10 mins of high-res:true 
figure(1);
plot(data);          %prints plot of raw data 
%filter

%ICA?
%(matrix of feature results) 
%    (do f1 and store in matrix)
FFT_Results = FFT_EEG(data); 
%    (do f2 and store in matrix) 
PSD_Results = PSD_EEG(data); 
%(compute wavelet and store aside) 

