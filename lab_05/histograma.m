function hist = histograma(input)

  hist = struct('int',[],'prob',[]);
  hist.int = unique(input);
  len = length(hist.int);
  v = vec(input);
  
  for ii = 1:len
    hist.prob(ii) = sum(hist.int(ii) == v);
  end
  
  s = sum(hist.prob);
  
  if s ~= 0
    hist.prob = hist.prob/sum(hist.prob);
  end

end