function [output] = spatialResolution(n, input)
% Função responsável por aumentar ou reduzir a imagem;
    
    image = imread(input);
    [x,y] = size(image);
    tam = x*n;
    output = uint8(zeros(tam));
    
    if x ~= y
        error('Imagem n quadrada.');
    end 
    
    if n <= 1
        
        passo = round(1/n);
        vec = 1:passo:x;
        
        for ii = 1:tam
            for jj = 1:tam
                output(ii,jj) = image(vec(ii),vec(jj));
            end
        end
    
    else
        %output = vizMaisProx(image, n);
        output = bilinear(image, n);
    end

end