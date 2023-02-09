function [X] = RandChiSquared(k,n)
%This function generates n random variables from a chi-squared
%distribution with k degrees of freedom

X = zeros(n,1);
for i = 1:n
    X(i) = sum(RandNormal(0,k).^2);
end
end

