function [log_likelihood] = loglikelihoodQ7(X, theta)
%This finds the l_n(m) for a given sample X from a
%Gamma(2, theta) distribution.

logfX = log((theta^2).*X.*exp(-theta.*X));
log_likelihood = sum(logfX);
end

