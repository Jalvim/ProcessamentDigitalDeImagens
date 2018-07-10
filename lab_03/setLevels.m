function pixels = setLevels()
% Funç~ao respons´avel por montar as matrizesequivalentes às representaç~oes de
% pixel para a nova imagem.

  pixels = {};
  pixels{1} = uint8(255*ones(3));
  pixels{10} = uint8(zeros(3));
  pixels{2} = uint8(255*[1 0 1; ones(2,3)]);
  pixels{3} = uint8(255*[1 0 1; ones(1,3); 1 1 0]);
  pixels{4} = uint8(255*[0 0 1; ones(1,3); 1 1 0]);
  pixels{5} = uint8(255*[0 0 1; ones(1,3); 0 1 0]);
  pixels{6} = uint8(255*[0 0 0; ones(1,3); 0 1 0]);
  pixels{7} = uint8(255*[0 0 0; 1 1 0; 0 1 0]);
  pixels{8} = uint8(255*[0 0 0; 1 1 0; 0 0 0]);
  pixels{9} = uint8(255*[0 0 0; 0 1 0; 0 0 0]);

end