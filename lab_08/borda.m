function output = borda(input)

  tam = size(input);
  im = input;
  m = max(max(input));
  B = m*ones(3);
  th = size(B,1);
  ll = floor(size(B,1)/2);
  [~, y] = size(input);
  input = [zeros(th,y); input; zeros(th,y)];
  [x, ~] = size(input);
  input = [zeros(x,th), input, zeros(x,th)];
  output = zeros(tam);
  
  for ii = 1:tam(1)
    for jj = 1:tam(2)
    
      mask = input((th+ii-ll):(th+ii+ll), (th+jj-ll):(th+jj+ll));
      
      if mean(mean(mask - B)) == 0
        output(ii,jj) = 255;
      end
      
    end
  end
  
  output = uint8(im - output);
  figure;
  imshow(output,[]);
 
end