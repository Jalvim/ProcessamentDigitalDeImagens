% Script em que todas as etapas do processamento est~ao completas
close all;
clear all;
clc;
pkg load signal;
pkg load image;

input1 = quest1();
dct1 = quest2(input1);
output1 = quest3(dct1, 50);
output2 = quest3(dct1, 80);
output3 = quest3(dct1, 100);

imwrite(uint8(cell2mat(dct1)), 'outputs/dct_parlamento.png');
imwrite(output1, 'outputs/parlamento_jpg_50.png');
imwrite(output2, 'outputs/parlamento_jpg_80.png');
imwrite(8*output3, 'outputs/parlamento_jpg_100.png');

error_par1 = MSE(input1, output1)
error_par2 = MSE(input1, output2)
error_par3 = MSE(input1, output3)

% Compress~ao aplicado nas outras imagens;

input2 = imread('aula07/baboon.bmp');
input3 = imread('aula07/fig3.png');
input4 = imread('aula07/peppers.bmp');

dct_2 = quest2(input2);
dct_3 = quest2(input3);
dct_4 = quest2(input4);

output22 = quest3(dct_2, 50);
output23 = quest3(dct_2, 80);
output24 = quest3(dct_2, 100);
output32 = quest3(dct_3, 50);
output33 = quest3(dct_3, 80);
output34 = quest3(dct_3, 100);
output42 = quest3(dct_4, 50);
output43 = quest3(dct_4, 80);
output44 = quest3(dct_4, 100);

imwrite(uint8(cell2mat(dct_2)), 'outputs/dct_baboon.png');
imwrite(uint8(cell2mat(dct_3)), 'outputs/dct_fig3.png');
imwrite(uint8(cell2mat(dct_4)), 'outputs/dct_peppers.png');
imwrite(output22, 'outputs/baboon_jpg_50.png');
imwrite(output23, 'outputs/baboon_jpg_80.png');
imwrite(8*output24, 'outputs/baboon_jpg_100.png');
imwrite(output32, 'outputs/fig3_jpg_50.png');
imwrite(output33, 'outputs/fig3_jpg_80.png');
imwrite(8*output34, 'outputs/fig3_jpg_100.png');
imwrite(output42, 'outputs/peppers_jpg_50.png');
imwrite(output43, 'outputs/peppers_jpg_80.png');
imwrite(8*output44, 'outputs/peppers_jpg_100.png');

error_baboon1 = MSE(input2, output22)
error_baboon2 = MSE(input2, output23)
error_baboon3 = MSE(input2, output24)
error_fig1 = MSE(input3, output32)
error_fig2 = MSE(input3, output33)
error_fig3 = MSE(input3, output34)
error_peppers1 = MSE(input4, output42)
error_peppers2 = MSE(input4, output43)
error_peppers3 = MSE(input4, output44)

[mssim11, ~] = ssim(input1, output1)
[mssim12, ~] = ssim(input1, output2)
[mssim13, ~] = ssim(input1, output3)
[mssim21, ~] = ssim(input2, output22)
[mssim22, ~] = ssim(input2, output23)
[mssim23, ~] = ssim(input2, output24)
[mssim31, ~] = ssim(input3, output32)
[mssim32, ~] = ssim(input3, output33)
[mssim33, ~] = ssim(input3, output34)
[mssim41, ~] = ssim(input4, output42)
[mssim42, ~] = ssim(input4, output43)
[mssim43, ~] = ssim(input4, output44)