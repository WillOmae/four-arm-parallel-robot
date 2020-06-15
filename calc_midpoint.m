function [p] = calc_midpoint(vec1, vec2)
  x = (vec1(1, 1) + vec2(1, 1)) / 2;
  y = (vec1(2, 1) + vec2(2, 1)) / 2;
  z = (vec1(3, 1) + vec2(3, 1)) / 2;
  p = [x; y; z];
endfunction
