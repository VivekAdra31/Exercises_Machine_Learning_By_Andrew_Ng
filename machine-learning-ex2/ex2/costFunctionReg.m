function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

h = sigmoid(X * theta);
lg = log(h);
lg1=log(1-h);
y1= 1-y;
tsquare=theta.^2;
J =(1/m * -sum((y' * lg) + (y1' * lg1)))+((lambda/(2*m))*sum(tsquare(2:size(tsquare),:))) ;
grad(1)= 1/m * sum(h-y);

for i = 2:size(grad),
grad(i) = (1/m * sum((h-y)'*X(:,i))) + ((lambda/m)*theta(i));




% =============================================================

end
