function dct = quest2(input)
  
  image = imageBlocker(input, 8);
  dim = size(image);
  dct = {};
  
  for ii = 1:dim(1)
    for jj = 1:dim(2)
    
      dct(ii,jj) = dct2(double(image{ii,jj})./8);
    
    end
  end
  
  figure;
  imshow(uint8(cell2mat(dct)), []);
  
end