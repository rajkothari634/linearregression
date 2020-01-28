function J = computeCost(X, y, theta)
m = length(y);
J = 0;
for i  = 1:m
  J= J + (theta(1)*X(i,1) + theta(2) * X(i,2) - y(i))^2;
endfor
J = J/2/m;
return;
end
