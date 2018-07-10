% Script Principal para o desenvolvimento das atividades propostas no roteiro do
% terceiro laborat´orio da disciplina de processamento digital de imagens.

%% Questão (1) b.

out1 = squareImage();
imwrite(out1,'./outputs/out1.png');
input = imread('./outputs/out1.png');
output = halftoning(input);
imwrite(output,'./outputs/out1_1.png');

%% Quest~ao (1) c.

in1 = imread('fig1.png');
in2 = imread('fig2.png');
in3 = imread('fig3.png');

out2 = halftoning(in1);
out3 = halftoning(in2);
out4 = halftoning(in3);

imwrite(out2,'./outputs/out2.png');
imwrite(out3,'./outputs/out3.png');
imwrite(out4,'./outputs/out4.png');