%Question 2 and 3
clc
clear
close all
format short

n=6

X = RandExp(1.2, n)

m = linspace(0.2,2).';

l_n = zeros(100,1);

for k = 1:100
    l_n(k) = loglikelihoodQ2(X, m(k));
end
figure
plot (m, l_n)
hold on
xlabel('m')
ylabel('l_{100}(m)')
hold off

%The value of m that maximises the loglikelihood for the sample X
mle = sum(X)*log(2)/n