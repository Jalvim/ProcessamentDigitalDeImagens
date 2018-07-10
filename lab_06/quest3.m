function out = quest3(input, colour, inter)

  dim = size(input);
  output = input.*ones(dim(1), dim(2), 3);
  [vecx, vecy] = find((input <= inter(2)) & (input >= inter(1)));
  x = length(vecx);
  
  for ii = 1:x
    output(vecx(ii), vecy(ii), :) = colour;
  end
  
  out = uint8(output);

end