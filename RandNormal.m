function [X] = RandNormal(mu,n)
%This function generates n random variables from a normal
%distribution with variance 1 and mean mu
A = rand(n,1);
B = rand(n,1);
Phi = 2*pi*A;
V = -2*log(1-B);
X = mu + sqrt(V).*cos(Phi);
%Y = mu + sqrt(V).*sin(Phi)
end

