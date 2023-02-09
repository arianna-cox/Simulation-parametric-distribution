function [X] = RandExp(theta0 , n)
%This function generates n random variables from an exponential
%distribution with parameter theta0
U = rand(n,1);
X = (-log(1 - U))/theta0;
end

