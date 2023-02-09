function [X] = RandGamma2(theta0 , n)
%This function generates n random variables from a gamma
%distribution with shape parameter 2 and scale parameter theta0
U = rand(n,1);
X = real((-lambertw(-1,( U - 1).*exp(-1))-1)./theta0);
end

