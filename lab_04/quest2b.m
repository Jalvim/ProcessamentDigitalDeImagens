function output = quest2b(input, h)
  
  imFFT = fft2(double(input));
  dim = size(imFFT);
  filtFFT = fft2(double(h), dim(1), dim(2));
  resFFT = filtFFT.*imFFT;
 
  output = uint8(real(ifft2(resFFT, dim(1), dim(2)))); 
  
end