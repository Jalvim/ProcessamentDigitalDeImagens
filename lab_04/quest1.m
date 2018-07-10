function [ang, modu, transf] = quest1(input)
  
  transf0 = fft2(double(input));
  modu = uint8(real(ifft2(abs(transf0))));
  ang = ifft2((exp(1i*angle(transf0))));
  transf = uint8(abs(ifft2(transf0)));
  
end