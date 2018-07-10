function [ang, modu, transf] = quest1(input)
  transf = fft2(input);
  modu = abs(transf);
  ang = arg(transf);
end