function output = quest3(input, n)
% O npumero 'n' eh a dimensao do filtro
  
  input = imageBlocker(input, n);
  dim = size(input);
  output = cell(size(input));
  
  for ii = 1:dim(1)
    for jj = 1:dim(2)
   
      hist = histograma(input{ii,jj});
      output(ii,jj) = norma(input{ii,jj},hist); 
    
    end
  end
  
  output = cell2mat(output);
  
end