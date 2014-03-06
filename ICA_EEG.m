function [] = ICA_EEG( input_args )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    [weights, sphere] = runica(input_args); %decomposes data 
    W = weights*sphere;              %W is the unmixing matrix
    activations = W*data;            %component time courses become rows of activations matrix  
    winv = inv(W);                   %
    n = 4; 
    projection = winv(:,n)*activations(n,:);
    

end
