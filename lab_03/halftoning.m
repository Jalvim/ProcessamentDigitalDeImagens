function [output] = halftoning(input)
% Funç~ao respons´avel por implementar o m´etodo de halftoning na imagem 
% representada pela matriz 'input'. O resultado estar´a representado em uma 
% imagem em tins de cinza.

  [m,n] = size(input);
  pixel = setLevels();
  output = zeros(3*m,3*n);
  vecx = 1:3:(3*m);
  vecy = 1:3:(3*n);
  
  for ii = 1:m
    for jj = 1:n
      pix = double(input(ii,jj));
      idx = (9 - round(9*pix/255)) + 1;
      x = vecx(ii):1:(vecx(ii)+2);
      y = vecy(jj):1:(vecy(jj)+2);
      output(x,y) = pixel{idx};
    end
  end

end