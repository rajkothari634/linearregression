function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
sum1 = 0;
sum2 = 0;
for iter = 1:num_iters
  for i = 1:m
    sum1 = sum1 + (theta(1)*X(i,1) + theta(2) * X(i,2) - y(i))*X(i,1);
  endfor
  for i = 1:m
    sum2 = sum2 + (theta(1)*X(i,1) + theta(2) * X(i,2) - y(i))*X(i,2);
  endfor
  theta(1) = theta(1) - alpha*sum1/m;
  theta(2) = theta(2) - alpha*sum2/m;
  sum1=0;
 sum2 = 0;   
  J_history(iter) = computeCost(X, y, theta);
end
Z=X(1:end,2:2);
plot(Z,y,"*");
hold on;
r=theta(1) + theta(2)*Z;
plot(Z,r);
end
