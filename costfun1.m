function [z, gradz] = costfun1(x)
%
%function [z, gradz] = costfun1(x)
%
% a function used to compute
%
% z = x^4 + 8*x^2 + 16
%
% and its gradient
z = x.^4 + 8*x.^2 + 16;
gradz = (4*x.^3 + 16*x);
end

