function output = quest3(dct, quality)
  
  output = {};
  dim = size(dct);
  Q = [16 11 10 16 24 40 51 61; ...
       12 12 14 19 26 58 60 55; ...
       14 13 16 24 40 57 69 56; ...
       14 17 22 29 51 87 80 62; ...
       18 22 37 56 68 109 103 77; ...
       24 36 55 64 81 104 113 92; ...
       49 64 78 87 103 121 120 101; ...
       72 92 95 98 112 100 103 99];
       
  if quality < 50
    escala_quant = 50/quality;
  else
    escala_quant = 2 - 2*quality/100;
  end
 
  QuantT = max(ones(size(Q)), round(escala_quant * Q));
  
  for ii = 1:dim(1)
    for jj = 1:dim(2)
    
      output{ii,jj} = idct2(round(dct{ii,jj}.*QuantT)); 
    
    end
  end
  
  output = cell2mat(output);
  output = uint8(output);
  
  figure;
  imshow(output,[]);
  
end