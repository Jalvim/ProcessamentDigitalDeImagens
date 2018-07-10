% Script Main do experimento desenvolvido. (USAR 'stem()' PRA PLOTAR!)
%% Quest~ao 1

input1 = imread('figs/fig_lista3_1.png');
input2 = imread('figs/einsteinLowContrast.png');

hist1 = histograma(input1);

figure 1
stem(hist1.int,hist1.prob);

%% Questão 2

hist2 = histograma(input2);
output1 = norma(input1, hist1);
output2 = norma(input2, hist2);

hist_eq_1 = histograma(output1);
hist_eq_2 = histograma(output2);

figure 2
stem(hist_eq_1.int, hist_eq_1.prob);

figure 3
stem(hist_eq_2.int, hist_eq_2.prob);

imwrite(output1, './questao_2/imagem1_eq.bmp');
imwrite(output2, './questao_2/imagem2_eq.bmp');

%% Quest~ao 3

output3 = quest3(input1, 5);
output4 = quest3(input1, 7);
output5 = quest3(input2, 5);
output6 = quest3(input2, 7);

hist_eq_3 = histograma(output3);
hist_eq_4 = histograma(output4);
hist_eq_5 = histograma(output5);
hist_eq_6 = histograma(output6);

figure 4
stem(hist_eq_3.int, hist_eq_3.prob);

figure 5
stem(hist_eq_4.int, hist_eq_4.prob);

figure 6
stem(hist_eq_5.int, hist_eq_5.prob);

figure 7
stem(hist_eq_6.int, hist_eq_6.prob);

imwrite(output3, './questao_3/imagem1_eqloc1.bmp');
imwrite(output4, './questao_3/imagem1_eqloc2.bmp');
imwrite(output5, './questao_3/imagem2_eqloc1.bmp');
imwrite(output6, './questao_3/imagem2_eqloc2.bmp');