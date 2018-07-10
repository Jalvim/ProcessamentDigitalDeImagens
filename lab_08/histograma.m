function output = histograma(input)

  h = struct('int', [], 'freq', []);
  h.int = unique(input);
  
  for ii = 1:length(h.int)
    h.freq(ii) = sum(sum(h.int(ii) == input));
  end
  
  output = h;

end