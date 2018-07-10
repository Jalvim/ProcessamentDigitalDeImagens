function output = imageBlocker(input,n)
  
  output = {};
  dim = size(input);
  resto = mod(dim,n);
  dim = dim - resto;
  
  for ii = 1:n:dim(1)
    for jj = 1:n:dim(2)
    
      output(ii,jj) = input(ii:(ii+n-1),jj:(jj+n-1));
    
    end
  end
  
end