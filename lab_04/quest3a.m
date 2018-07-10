function output = quest3a(input)
  
  imFFT = fftshift(fft2(double(input)));
  output = uint8(log10(abs(imFFT)));
  
end