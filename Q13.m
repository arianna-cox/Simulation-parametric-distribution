%Question 13
clear
clc
close all

%Degrees of freedom
for freedom = [1,5,40]
    %Sample size n
    for n = [100,300,500]
        %Generate a random sample of size n and generate a histogram
        X = RandChiSquared(freedom, n);
        figure('Name',['Histogram of ', num2str(n),' chi-square rvs with ', num2str(freedom),' degrees of freedom'])
        histogram(X)
        hold on
        xlabel('x_i')
        ylabel('Frequency')
        hold off
    end
end