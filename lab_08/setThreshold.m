function [th, ii] = setThreshold(h)

  dif = 100;
  %l = find(ceil(mean(h.int)) == h.int)
  l = 80;
  t0 = 0;
  t1 = 0;
  ii = 0;
  
  while dif >= 1e-7 %dif ~= 0
  
    m1 = h.int(1:l);
    m2 = h.int(l+1:end);
    
    if (m1 == 0) || (m2 == 0)
      if m1 == 0
        t1 = mean(m2);
      else
        t1 = mean(m1);
      end
    else 
      t1 = (mean(m1) + mean(m2))/2;
    end
    
    dif = abs(t1 - t0);
    t0 = t1;
    idx = find(h.int >= t1);
    l = idx(1);
    ii ++;
  
  end
  
  th = t1;

end