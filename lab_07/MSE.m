function error = MSE(input1, input2)

  [m, n] = size(input1);
  error = sum(sum((input1 - input2).^2));
  error = error./(m*n);

end