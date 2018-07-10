function output = bin(input, th)

  output = uint8(255*(input >= th));

end