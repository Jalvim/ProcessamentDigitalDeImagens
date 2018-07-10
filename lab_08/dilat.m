function output = dilat(input, B)

  tam = size(input);
  im = input;
  th = size(B,1);
  ll = floor(size(B,1)/2);
  [~, y] = size(input);
  input = [zeros(th,y); input; zeros(th,y)];
  [x, ~] = size(input);
  input = [zeros(x,th), input, zeros(x,th)];
  output = zeros(size(input));
  
  for ii = 1:tam(1)
    for jj = 1:tam(2)
    
      mask = input((th+ii-ll):(th+ii+ll), (th+jj-ll):(th+jj+ll));
      
      if mask(ll,ll)  = B(ll,ll)
        output((th+ii-ll):(th+ii+ll), (th+jj-ll):(th+jj+ll)) = B;
      end
      
    end
  end
  
%  output = uint8(im - output);
%  figure;
%  imshow(output,[]);
  output = uint8(output);

end