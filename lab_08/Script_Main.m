% Script principal para a execuç~ao do experimento

pkg load image;

input1 = imread('imagens/fingerPrint.png');
input2 = imread('imagens/blocks.png');

[output1, th] = quest1(input1);
imwrite(output1, 'outputs/output1.png');

output2 = quest2(input2);
imwrite(output2, 'outputs/output2.png');