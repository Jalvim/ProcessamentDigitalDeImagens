function output = squareImage()
  
  output = zeros(256);
  
  for ii = 1:256
    output(:,ii) = ii-1;
  end
  
  output = uint8(output);
  
end