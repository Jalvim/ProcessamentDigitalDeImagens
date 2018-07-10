% Script Principal para a analise do exrcicio proposto para o quarto lab.

%% Exercício 1

input = imread('./files-lab4/woman.png');

[ang, modu, transf] = quest1(input);

figure 1
imshow(ang,[]);
figure 2
imshow(modu,[]);
figure 3
imshow(transf,[]);

%ang = uint8(-50*log10(abs(double(ang))));
ang = uint8(real(20000*double(ang)));

imwrite(ang,'./output1/ang.bmp');
imwrite(modu, './output1/modu.bmp');
imwrite(transf, './output1/ifft.bmp');

%% Exercicio 2

h1 = ones(5)/25;
h2 = [1 2 1; 0 0 0; -1 -2 -1];
filt1 = quest2a(h1);
filt2 = quest2a(h2);

figure 4
imshow(filt1, []);
figure 5
imshow(filt2, []);

imwrite(10000*filt1, './output2/filt1.bmp');
imwrite(100*filt2, './output2/filt2.bmp');

input1 = imread('./files-lab4/footBallOrig.png');
input2 = imread('./files-lab4/woman.png');
input3 = imread('./files-lab4/lena.bmp');

out1 = quest2b(input1, h1);
out2 = quest2b(input2, h1);
out3 = quest2b(input3, h1);
out4 = quest2b(input1, h2);
out5 = quest2b(input2, h2);
out6 = quest2b(input3, h2);

imwrite(out1, './output2/im1filt1.bmp')
imwrite(out2, './output2/im2filt1.bmp')
imwrite(out3, './output2/im3filt1.bmp')
imwrite(out4, './output2/im1filt2.bmp')
imwrite(out5, './output2/im2filt2.bmp')
imwrite(out6, './output2/im3filt2.bmp')

%% Exercicio 3

input1 = imread('./files-lab4/footBallOrig.png');
input2 = imread('./files-lab4/noiseball.png');

espectro1 = quest3a(input1);
espectro2 = quest3a(input2);

figure 6
imshow(espectro1,[]);
figure 7
imshow(espectro2,[]);

espectro1 = uint8(power(2, double(espectro1)));
espectro2 = uint8(power(2, double(espectro2)));

imwrite(espectro1, './output3/espectro1.bmp');
imwrite(espectro2, './output3/espectro2.bmp');

[nball1, imFilt1] = quest3b(input2, 10, 50, 100);
[nball2, imFilt2] = quest3b(input2, 10, 1, 400);
[nball3, imFilt3] = quest3b(input2, 10, 620, 100);
[nball4, imFilt4] = quest3b(input2, 10, 22, 414);
[nball5, imFilt5] = quest3b(input2, 10, 592, 414);
[nball6, imFilt6] = quest3b(input2, 10, 1, 114);

figure 8
imshow(nball1, []);
figure 9
imshow(nball2, []);
figure 10
imshow(nball3, []);
figure 11
imshow(nball4, []);
figure 12
imshow(nball5, []);
figure 13
imshow(nball6, []);








