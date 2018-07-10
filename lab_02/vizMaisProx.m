function output = vizMaisProx(input, n)
% Função implementada com o intuito de realizar a interpolaç~ao de uma iamgem 
% pelo m´etodo do vizinho mais pr´oximo.

    [x,y] = size(input);
    tam = x*n;
    image = uint8(zeros(tam));
    output = uint8(zeros(tam));
    vec = 1:n:tam;
    
    for ii = 1:x
        for jj = 1:y
            image(vec(ii), vec(jj)) = input(ii,jj);
        end
    end
    
    [idx, idy, ~] = find(image);
    
    for ii = 1:tam
        for jj = 1:tam
            [~, x] = min(abs(idx - ii));
            [~, y] = min(abs(idy - jj));
            output(ii,jj) = image(idx(x), idy(y));
        end
    end   
            
end