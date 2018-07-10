function [R, G, B] = quest1(input)
  
  dim = size(input);
  
  R = zeros(dim(1), dim(2), 3);
  G = zeros(dim(1), dim(2), 3);
  B = zeros(dim(1), dim(2), 3);
  
  R(:,:,1) = input(:,:,1);
  G(:,:,2) = input(:,:,2);
  B(:,:,3) = input(:,:,3);
  
  R = uint8(R);
  G = uint8(G);
  B = uint8(B);

end