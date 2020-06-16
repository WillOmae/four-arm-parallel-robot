## calculate the midpoint between two points
function [mid] = calc_midpoint(point1, point2)
 x = (point1(1, 1) + point2(1, 1)) / 2;
 y = (point1(2, 1) + point2(2, 1)) / 2;
 z = (point1(3, 1) + point2(3, 1)) / 2;
 mid = [x; y; z];
endfunction
