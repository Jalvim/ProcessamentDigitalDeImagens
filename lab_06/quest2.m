function output = quest2(input)

  dim = size(input);
  quantVec = 0:51:255;
  output = [];
  
  for ii = 1:dim(1)
    for jj = 1:dim(2)
      for kk = 1:dim(3)
      
        idx = (input(ii,jj,kk) >= quantVec);
        output(ii,jj,kk) = max(quantVec(idx));
        
      end
    end
  end
     
  output = uint8(output);   

end