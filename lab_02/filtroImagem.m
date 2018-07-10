function [output] = filtroImagem(input, w)
% Este é um sistema de filtragem de imagem, ele é apenas funcional para
% filtros de matriz quadrada com número ímpar de elementos.
    image = imread(input);
    output = zeros(size(image));
    
    ll = size(w,1);
    
    % Vetor de margeamento da máscara da imagem.
    mask = (-(ll-1)/2):1:((ll-1)/2);
    
    [m,n] = size(image);
    
    for ii = 1:1:m
        for jj = 1:1:n
            
            if ii + mask(1) <= 0 || jj + mask(1) <= 0 || ... 
                    ii + mask(end) >= m || jj + mask(end) >= n
                % Preservação das bordas da imagem.
                output(ii,jj) = image(ii,jj);
                
            else
                
                % Delimitação da área a ser usada pela máscara.
                x = mask + ii + 1;
                y = mask + jj + 1;
                mat = double(image(x, y));
                
                % Aplicação do filtro na parte da imagem delimitada.
                mat = mat.*w;
                output(ii,jj) = sum(sum(mat));
            
        end
    end
    
    output = uint8(round(output));

end