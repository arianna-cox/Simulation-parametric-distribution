function [log_likelihood] = loglikelihoodQ2(X, m)
%This finds the l_n(m) for a given sample X from
%an exponential distribution

loggX = log(log(2)*exp(-log(2)*X./m)./m);
log_likelihood = sum(loggX);
end

