function output = bilinear(input, n)
% Funç~ao respons´avel pelo m´etodo de interpolaç~ao bilinear.

    [x,y]  = size(input);
    tam = n*x;
    image = zeros(tam);
    output = zeros(tam);
    vec = 1:n:tam;
    
    for ii = 1:x
        for jj = 1:y
            image(vec(ii),vec(jj)) = double(input(ii,jj));
        end
    end
    
    [x,y] = meshgrid([1:n:tam]);
    [xi,yi] = meshgrid([1:tam]);

    output = interp2(x,y,double(input), xi, yi, 'linear');    

    output = uint8(output);    

end