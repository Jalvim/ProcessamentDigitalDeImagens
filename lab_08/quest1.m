function [output, th, it] = quest1(input)

  h = histograma(input);
  [th, it] = setThreshold(h);
  output = bin(input, th);
  
  figure
  imshow(output, []);

end