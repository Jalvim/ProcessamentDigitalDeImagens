function output = norma(input, hist)

 dim = size(input);
 output = zeros(dim);
 func = probabilityMass(hist);
 
 for ii = 1:dim(1)
  for jj = 1:dim(2)
    
    idx = (input(ii,jj) == func.dom);
    output(ii,jj) = func.im(idx);
    
  end
 end
 
 output = uint8(output);

end