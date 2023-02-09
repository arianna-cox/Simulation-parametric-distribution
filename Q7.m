%Q7
clc
clear
format short
close all

%Number of elements in a sample
n = 30
%Parameter theta0
theta0 = 2.2

%Generate a sample with n elements
X = RandGamma2(theta0,n)

%Plot the loglikelihood from 0.5 to 5 at 100 evenly space points
theta = linspace(0.5,5).';
l_n = zeros(100,1);

for k = 1:100
    l_n(k) = loglikelihoodQ7(X, theta(k));
end

%Plot the log-likelihood function
figure
plot (theta, l_n)
hold on
xlabel('\theta')
ylabel('l_n(\theta)')
hold off

%The following finds the maximum likelihood estimator of the sample
mle = 2*n/sum(X)

%The following plots N samples on the same graph
N = 100;

mle_vector = zeros(N,1);
m = linspace(0.5,5).';

figure
for i = 1:N
    %Generate a sample with n elements
    X1 = RandGamma2(theta0, n);

    %The following plots the log-likelihood function for this sample on the
    %same graph as all the other samples
    l_n = zeros(100,1);

    for k = 1:100
        l_n(k) = loglikelihoodQ7(X1, m(k));
    end
    plot (m, l_n)
    hold on
    
    %The value of m that maximises the loglikelihood for the sample X
    mle_vector(i) = 2*n/sum(X1);
end
xlabel('\theta')
ylabel('l_n(\theta)')
hold off