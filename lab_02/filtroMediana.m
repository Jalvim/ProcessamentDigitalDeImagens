function output = filtroMediana(input, n)

  mask = (-(n-1)/2):1:((n-1)/2);
  [x,y] = size(input);
  
  for ii = 1:x
    for jj = 1:y
    
      if ii + mask(1) <= 0 || jj + mask(1) <= 0 || ... 
         ii + mask(end) >= x || jj + mask(end) >= y
         
         output(ii,jj) = input(ii,jj);
         
      else
                
        % Delimitação da área a ser usada pela máscara.
        x2 = mask + ii + 1;
        y2 = mask + jj + 1;
                
        % Aplicação do filtro na parte da imagem delimitada.
        output(ii,jj) = median(median(double(input(x2,y2))));
            
        end
    end
    
    output = uint8(output);
  
end