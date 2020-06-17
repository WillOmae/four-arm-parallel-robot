function plot_links(rot, r2, p, a1, a2, a3, a4, b1, b2, b3, b4, j1, j2, j3, j4)
 # draw the baseplate
 X = [a1(1, 1), a3(1, 1), a3(1, 1), a1(1, 1), a1(1, 1)];
 Y = [a2(2, 1), a2(2, 1), a4(2, 1), a4(2, 1), a2(2, 1)];
 Z = [0, 0, 0, 0, 0];
 plot3(X, Y, Z);
 txt = sprintf("O (%d, %d, %d)", 0, 0, 0);
 text(0, 0, 0, txt);
 hold on
 
 # draw the secondary platform
 R2sin = r2 * sind(rot);
 R2cos = r2 * cosd(rot);
 X = [b1(1, 1) - R2sin, b2(1, 1) - R2cos, b3(1, 1) + R2sin, b4(1, 1) + R2cos, b1(1, 1) - R2sin];
 Y = [b1(2, 1) + R2cos, b2(2, 1) - R2sin, b3(2, 1) - R2cos, b4(2, 1) + R2sin, b1(2, 1) + R2cos];
 Z = [p(3, 1), p(3, 1), p(3, 1), p(3, 1), p(3, 1)];
 plot3(X, Y, Z);
 txt = sprintf("P (%d, %d, %d)", p(1, 1), p(2, 1), p(3, 1));
 text(p(1, 1), p(2, 1), p(3, 1), txt);
 hold on
 
 # primary arm lengths
 a1j1 = calc_length(calc_vector(a1, j1));
 a2j2 = calc_length(calc_vector(a2, j2));
 a3j3 = calc_length(calc_vector(a3, j3));
 a4j4 = calc_length(calc_vector(a4, j4));
 # secondary arm lengths
 j1b1 = calc_length(calc_vector(j1, b1));
 j2b2 = calc_length(calc_vector(j2, b2));
 j3b3 = calc_length(calc_vector(j3, b3));
 j4b4 = calc_length(calc_vector(j4, b4));
 
 # draw the first arm
 if is_natural(j1)
  X = [a1(1, 1), j1(1, 1), b1(1, 1)];
  Y = [a1(2, 1), j1(2, 1), b1(2, 1)];
  Z = [a1(3, 1), j1(3, 1), b1(3, 1)];
  plot3(X, Y, Z);
  
  txt = "A1";
  text(a1(1, 1), a1(2, 1), a1(3, 1), txt);
  txt = "J1";
  text(j1(1, 1), j1(2, 1), j1(3, 1), txt);
  txt = "B1";
  text(b1(1, 1), b1(2, 1), b1(3, 1), txt);
  
  txtPos = calc_midpoint(a1, j1);
  txt = sprintf("%d", a1j1);
  text(txtPos(1, 1), txtPos(2, 1), txtPos(3, 1), txt);
  txtPos = calc_midpoint(j1, b1);
  txt = sprintf("%d", j1b1);
  text(txtPos(1, 1), txtPos(2, 1), txtPos(3, 1), txt);
  
  hold on
 endif
 
 # draw the second arm
 if is_natural(j2)
  X = [a2(1, 1), j2(1, 1), b2(1, 1)];
  Y = [a2(2, 1), j2(2, 1), b2(2, 1)];
  Z = [a2(3, 1), j2(3, 1), b2(3, 1)];
  plot3(X, Y, Z);
  
  txt = "A2";
  text(a2(1, 1), a2(2, 1), a2(3, 1), txt);
  txt = "J2";
  text(j2(1, 1), j2(2, 1), j2(3, 1), txt);
  txt = "B2";
  text(b2(1, 1), b2(2, 1), b2(3, 1), txt);
  
  txtPos = calc_midpoint(a2, j2);
  txt = sprintf("%d", a2j2);
  text(txtPos(1, 1), txtPos(2, 1), txtPos(3, 1), txt);
  txtPos = calc_midpoint(j2, b2);
  txt = sprintf("%d", j2b2);
  text(txtPos(1, 1), txtPos(2, 1), txtPos(3, 1), txt);
  
  hold on
 endif
 
 # draw the third arm
 if is_natural(j3)
  X = [a3(1, 1), j3(1, 1), b3(1, 1)];
  Y = [a3(2, 1), j3(2, 1), b3(2, 1)];
  Z = [a3(3, 1), j3(3, 1), b3(3, 1)];
  plot3(X, Y, Z);
  
  txt = "A3";
  text(a3(1, 1), a3(2, 1), a3(3, 1), txt);
  txt = "J3";
  text(j3(1, 1), j3(2, 1), j3(3, 1), txt);
  txt = "B3";
  text(b3(1, 1), b3(2, 1), b3(3, 1), txt);
  
  txtPos = calc_midpoint(a3, j3);
  txt = sprintf("%d", a3j3);
  text(txtPos(1, 1), txtPos(2, 1), txtPos(3, 1), txt);
  txtPos = calc_midpoint(j3, b3);
  txt = sprintf("%d", j3b3);
  text(txtPos(1, 1), txtPos(2, 1), txtPos(3, 1), txt);
  
  hold on
 endif
 
 # draw the fourth arm
 if is_natural(j4)
  X = [a4(1, 1), j4(1, 1), b4(1, 1)];
  Y = [a4(2, 1), j4(2, 1), b4(2, 1)];
  Z = [a4(3, 1), j4(3, 1), b4(3, 1)];
  plot3(X, Y, Z);
  
  txt = "A4";
  text(a4(1, 1), a4(2, 1), a4(3, 1), txt);
  txt = "J4";
  text(j4(1, 1), j4(2, 1), j4(3, 1), txt);
  txt = "B4";
  text(b4(1, 1), b4(2, 1), b4(3, 1), txt);
  
  txtPos = calc_midpoint(a4, j4);
  txt = sprintf("%d", a4j4);
  text(txtPos(1, 1), txtPos(2, 1), txtPos(3, 1), txt);
  txtPos = calc_midpoint(j4, b4);
  txt = sprintf("%d", j4b4);
  text(txtPos(1, 1), txtPos(2, 1), txtPos(3, 1), txt);
  hold off
 endif
 
 # draw the labels
 xlabel('x');
 ylabel('y');
 zlabel('z');
 endfunction