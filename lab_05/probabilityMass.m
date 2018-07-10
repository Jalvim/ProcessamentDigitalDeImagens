function func = probabilityMass(hist)
  
  func = struct('dom',[],'im',[]);
  func.dom = hist.int;
  len = length(hist.prob);
 
  for ii = 1:len
    func.im(ii) = 255*sum(hist.prob(1:ii));
  end 

end