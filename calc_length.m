% calculate vector length
function [l] = calc_length(vector)
  x = vector(1, 1);
  y = vector(2, 1);
  z = vector(3, 1);
  l = sqrt(x ^ 2 + y ^ 2 + z ^ 2);
endfunction