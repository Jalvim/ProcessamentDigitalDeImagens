% Script onde o corpo das questões postas em exercício serão respondidas

clear all;
clc;


%% Questão 01

input = './lena.bmp';

% Todas as imagens geradas com os diferentes filtros estão salvas no diretório
% 'outputs', com os respectivos nomes out[].bmp, cada filtro segue a ordem dada 
% pelo exercício.

w1 = 1/9*ones(3);
out1 = filtroImagem(input,w1);
imwrite(out1, './outputs1/out1.bmp');
w2 = 1/16*[1 2 1; 2 4 2; 1 2 1];
out2 = filtroImagem(input,w2);
imwrite(out2, './outputs1/out2.bmp');
w3 = [0 -1 0; -1 5 -1; 0 -1 0];
out3 = filtroImagem(input,w3);
imwrite(out3, './outputs1/out3.bmp');
w4 = [-1 -1 -1; -1 8 -1; -1 -1 -1];
out4 = filtroImagem(input,w4);
imwrite(out4, './outputs1/out4.bmp');
w5 = [1 2 1; 0 0 0; -1 -2 -1];
out5 = filtroImagem(input,w5);
imwrite(out5, './outputs1/out5.bmp');

% Resposta (c): O tamanho do filtro afeta na resoluçao da imagem, trazendo o 
% resultado total cada vez mais próximo de um borrão. Ou seja, vai-se dando um 
% caráter de passa-baixas para o filtro implementado.

%% Questão 02

% Seção de c´odigos em que a imagem ´e reduzida por fatores de 2, 4, 8 e 16.

red2 = spatialResolution(1/2,input);
red4 = spatialResolution(1/4,input);
red8 = spatialResolution(1/8,input);
red16 = spatialResolution(1/16,input);
imwrite(red2, './outputs2/red2.bmp');
imwrite(red4, './outputs2/red4.bmp');
imwrite(red8, './outputs2/red8.bmp');
imwrite(red16, './outputs2/red16.bmp');

% Seç~ao do c´odigo respons´avel pela descoactaç~ao dos arquivos por meio do 
% m´etodo dos vizinhos mais pr´oximos.

aum2 = spatialResolution(2,'./outputs2/red2.bmp');
aum4 = spatialResolution(4,'./outputs2/red4.bmp');
aum8 = spatialResolution(8,'./outputs2/red8.bmp');
aum16 = spatialResolution(16,'./outputs2/red16.bmp');
imwrite(aum2, './outputs2/aum2.bmp');
imwrite(aum4, './outputs2/aum4.bmp');
imwrite(aum8, './outputs2/aum8.bmp');
imwrite(aum16, './outputs2/aum16.bmp');

% Seç~ao do c´odigo em que as imagens s~ao recontru´idas por meio da interpolaç~ao
% bilinear, ou seja, o algoritmo ´e mais preciso.

bil2 = spatialResolution(2,'./outputs2/red2.bmp');
bil4 = spatialResolution(4,'./outputs2/red4.bmp');
bil8 = spatialResolution(8,'./outputs2/red8.bmp');
bil16 = spatialResolution(16,'./outputs2/red16.bmp');
imwrite(bil2, './outputs2/bil2.bmp');
imwrite(bil4, './outputs2/bil4.bmp');
imwrite(bil8, './outputs2/bil8.bmp');
imwrite(bil16, './outputs2/bil16.bmp');

