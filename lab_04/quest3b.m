function [output, imFilt] = quest3b(input, D0, x, y)

  imFFT = fft2(double(input));
  [M,N] = size(imFFT);
  filtFFT = notch('ideal', M, N, D0, x, y);
  imFilt = filtFFT .* imFFT;
  output = uint8(log10(abs(filtFFT .* imFFT)));

end