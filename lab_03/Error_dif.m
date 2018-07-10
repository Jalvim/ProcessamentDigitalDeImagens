% Script HALTONING WITH ERROR DIFFUSION

close all;
clc;

input = imread('fotos/direito_empresarial.jpg');
input = rgb2gray(input);
image = [];
n = 25;

for ii = 1:size(input,1)
  for jj = 1:size(input,2)
    image(ii:(ii+n-1), jj:(jj+n-1)) = ones(n)*input(ii,jj);
  end
end

[h, w] = size(image);
output = zeros(h,w);

M = max(max(image));
m = min(min(image));
lim = (M+m)/2;

mask = [-1 0 1];

for ii = 1:h
  for jj = 1:w
  
    if ii + mask(1) <= 0 || jj + mask(1) <= 0 || ... 
      ii + mask(end) >= h || jj + mask(end) >= w
      % Preservação das bordas da imagem.
      output(ii,jj) = image(ii,jj);
    else
      if image(ii,jj) >= lim
        output(ii,jj) = M;
      else
        output(ii,jj) = m;
      end
      error = image(ii,jj) - output(ii,jj);
      image(ii+1,jj)  += 7*error/16;
      image(ii-1,jj+1)+= 3*error/16;
      image(ii,jj+1)  += 5*error/16;
      image(ii+1,jj+1)+= 1*error/16;
    end
  
  end
end

output = uint8(output);

figure 1
imshow(output);

figure 2
imshow(image);

imwrite(output, 'im2.png');