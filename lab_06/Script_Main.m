%% Questao 1

input = imread('Aula6/flower.png');
[R, G, B] = quest1(input);
figure
imshow(R,[])
figure
imshow(G,[])
figure
imshow(B,[])

imwrite(R, 'out1/Red.png');
imwrite(G, 'out1/Green.png');
imwrite(B, 'out1/Blue.png');

%% Questao 2

input = imread('Aula6/strawberries_coffee.png');
out2 = quest2(input);
figure
imshow(out2,[]);
input2 = imread('Aula6/ColourCube.bmp');
outCube = quest2(input2);
figure
imshow(outCube,[]);

imwrite(out2, 'out2/morango_quant.png');
imwrite(outCube, 'out2/colour_cube_quant.png');

%% Questao 3 

input3 = imread('Aula6/world_map.png');
colour = [0,0,255];
inter = [0 20];
out3 = quest3(input3, colour, inter);
figure
imshow(out3,[]);

input4 = imread('Aula6/view.png');
colour = [255,255,0];
inter = [0 20];
out4 = quest3(input4, colour, inter);
figure
imshow(out4,[]);

imwrite(out3, 'out3/world_map_blue.png');
imwrite(out4, 'out3/view_yellow.png');

