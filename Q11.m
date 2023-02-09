%Question 11
clc
clear
close all
format short
%Mean
mu = 4;
%Size of sample
n = 50;
%Numer of samples
repeats = 25;

X = zeros(n,repeats);
Xbar = zeros(repeats,1);
lowerbound = zeros(repeats,1);
upperbound = zeros(repeats,1);

%Check whether the maximum likelihood estimator for mu lies the 100gamma%
%confidence interval
gamma = 0.8;
InConfidenceInterval = zeros(repeats,1);
Phi = sqrt(2)*erfinv(gamma);
for k = 1:repeats
    %Create a sample 
    X(:,k) = RandNormal(mu , n);
    %Sample mean
    Xbar(k) = sum(X(:,k))/n;
    %Find the upper and lower bounds of the 100gamma% confidence interval
    lowerbound(k) = Xbar(k) - Phi/sqrt(n);
    upperbound(k) = Xbar(k) + Phi/sqrt(n);
    %Check if mu lies in the confidence interval
    if lowerbound(k) <= mu && mu <= upperbound(k)
        InConfidenceInterval(k) = 1;
    end
end

Varnames = {'Sample Mean', 'Lower bound', 'Upper bound', 'Does the interval contain mu'};
Table = table(Xbar,lowerbound,upperbound, InConfidenceInterval, 'VariableNames', Varnames)

%The number of times the interval did not contain mu
DidNotContain = repeats - sum(InConfidenceInterval)
%Percentage of samples for which the interval did not contain mu
PercentageDidNotContain = DidNotContain/repeats
