%Question 8
clc
clear
close all

theta0 = 2.2;
N = 2000;

for n = [10,50]
    X = zeros(n,200);

    for k = 1:N
        X(:,k) = RandGamma2(theta0, n);
    end

    mle = zeros(200,1);

    for k = 1:N
        mle(k) = 2*n/sum(X(:,k));
    end

    figure
    histogram(mle)
    hold on
    xlabel('Maximum likelihood estimator of sample')
    ylabel('Frequency')
    hold off
end