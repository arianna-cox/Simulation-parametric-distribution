%Question 3
clc
clear
close all
format short

%Number of elements in a sample
n=6

%Number of samples on the graph
N = 100
mle = zeros(N,1);
m = linspace(0.2,2).';

for i = 1:N
    %Generate a sample with n elements
    X = RandExp(1.2, n);

    %The following plots the log-likelihood function for this sample on the
    %same graph as all the other samples
    l_n = zeros(100,1);
    for k = 1:100
        l_n(k) = loglikelihoodQ2(X, m(k));
    end
    plot (m, l_n)
    hold on
    
    %The value of m that maximises the loglikelihood for the sample X
    mle(i) = sum(X)*log(2)/n;
end
xlabel('m')
ylabel('l_n(m)')
hold off