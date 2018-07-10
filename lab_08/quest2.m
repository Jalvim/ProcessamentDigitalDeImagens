function [vec] = quest2(input)
  
  image = fillHole(input);
  bounds = bwboundaries(image, 8, 'holes');
  im = (input - image);
  im = (ones(size(im)) - im);
  boundsH = bwboundaries(im, 8, 'holes');
  vec = struct('Nobj', numel(bounds), 'Nholes', [], 'Nobjholes', [], 'isSquare', zeros(1,numel(bounds)), ...
  'frac', sum(sum(input))/(size(input,1)*size(input,2)), 'sqHoles', [], 'circNoHoles', []);
  
  for ll = 1:numel(bounds)
    
    obj = zeros(size(input));
    tam = length(bounds{ll}(:,1));
    
    for ii = 1:tam
      obj(bounds{ll}(ii,1), bounds{ll}(ii,2)) = 1;
    end
    
    obj = (fillHole(obj) & input);
    b = bwboundaries(obj, 8, 'holes');
    
%    figure
%    imshow(obj, []);
%    hold on
%    
%    for kk = 1:numel(b)
%     plot (b{kk}(:, 2), b{kk}(:, 1), 'r', 'linewidth', 2);
%    end
%    
%    hold off
    
    vec.Nobjholes(ll) = numel(b) - 1;
    
    if sum(bounds{ll}(1:5,1)) == sum(bounds{ll}(5:9,1))
      vec.isSquare(ll) = 1;
    end
    
    vec.Nholes = sum(vec.Nobjholes);
  
  end
  
  vec.sqHoles = sum((vec.isSquare == 1) & (vec.Nobjholes ~= 0));
  vec.circNoHoles = sum((vec.isSquare == 0) & (vec.Nobjholes == 0));
  
end