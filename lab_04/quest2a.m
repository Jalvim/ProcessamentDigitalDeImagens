function absolute = quest2a(h)
  
  filtFFT = fft2(double(h));
  dim = size(filtFFT);  
  filtFFT = circshift(filtFFT, [(dim(1)-1)/2, (dim(2)-1)/2]);
  absolute = uint8(10*log(abs(filtFFT)));

end