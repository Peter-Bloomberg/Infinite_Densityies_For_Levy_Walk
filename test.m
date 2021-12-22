% D = 1, x0 = 1;

% fun = @(s,x0) exp(-abs(x0)/1) .* sqrt((s .* log(s)) ./ (s-1));
% eff = integral(@(s) fun(s, 1), 0, Inf);

t = 1:0.1:10;

lambda = alpha;

IalphaP1 = 0.14026;

% y = v0^2 * t; 

% y = (F0 / 2)^q * ((2 * (alpha - 1) * q)/((alpha - 2 * q) * (alpha - 2 * q - 1))) ...
%     * t.^(- alpha + 2 * q + 1);
% 

% msd = -t.^(-alpha) .* (2 * v0^2 + w^2)/(4 * w^2 * (-1 + alpha * IalphaP1));

msd2 = 0.9 * exp(-0.7 * t);

% msd = 1/4 * t.^(-alpha) .* (2 * v0^2 + w^2)/(0.0820872 -1) + v0^2/w^2;

% msd = 1/4 * t.^(-alpha) .* (2 * v0^2 + w^2)/(0.0496417 -1) + v0^2/w^2;


%msd = 1/4 * t.^(-alpha) .* (2 * v0^2 + w^2)/(-0.151896 -1) + v0^2/w^2;

%msd = 1/(4 * w^2) * t.^(-alpha) .* (2 * v0^2 + w^2)/(-0.151896 -1) + v0^2/w^2 ;

%y = 0.45 * ((0.287217./t.^1.5) + 0.5 ./ t.^0.5) ;

y = - 2 * (v0^2) .* (exp(-((lambda * t)/2)) / (lambda^2 - 4 * w^2) + ( ...
    exp(-((2 * t * w^2)/lambda)) * (lambda^2 - 2 * w^2))/( ...
    2 * w^2 * (-lambda^2 + 4 * w^2)));

% y = - ((2 * t.^(-alpha) * v0^2) / (-1 + alpha * IalphaP1) + ( ...
%  t .^ (-alpha) * w^2) / (-1 + alpha * IalphaP1) - (4 * t.^(-1 + alpha) * v0^2)/( ...
%  gamma(2 - alpha) * gamma(alpha)) + (2 * t.^(-1 + alpha) * w^2)/( ...
%  gamma(2 - alpha) * gamma(alpha)))/(4 * w^2);

% y = - ((2 * t.^(-alpha) * v0^2) / (-1 + alpha * IalphaP1) + ( ...
%  t .^ (-alpha) * w^2) / (-1 + alpha * IalphaP1) ...
%  )/(4 * w^2);

% 
%+ ...
 %   (t.^(-1 + alpha) .* (-4 * v0^2 + 2 * w^2))/(gamma(2 - alpha) * gamma(alpha));

hold on
semilogy(t, msd2);