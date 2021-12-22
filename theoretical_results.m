% 
% x2 = 1d6:1d4:1d9;
% 
% p_theo = 2^(-1-alpha/2) * (alpha - 1) * F0^((alpha-1)/2) * x2.^(-1-alpha/2) ...
%     .* (alpha * sqrt(F0) * t - sqrt(2) * (alpha - 1) * sqrt(x2));
% 
% hold on
% plot(x2, p_theo);

x = -1d3:1:1d3;
pdf = 1/(v0 * sqrt(2 * pi * t)) * exp(- x.^2 / (2 * t * v0^2));

hold on
plot(x, pdf)
