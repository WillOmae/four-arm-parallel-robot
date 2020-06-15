function plot_links(p, a1, a2, a3, a4, b1, b2, b3, b4, j1, j2, j3, j4)
  % draw the baseplate
  X = [a1(1, 1), a3(1, 1), a3(1, 1), a1(1, 1), a1(1, 1)];
  Y = [a2(2, 1), a2(2, 1), a4(2, 1), a4(2, 1), a2(2, 1)];
  Z = [0, 0, 0, 0, 0];
  plot3(X, Y, Z);
  text(0, 0, 0, sprintf("O (%d, %d, %d)", 0, 0, 0));
  hold on
  
  % draw the secondary platform
  X = [b1(1, 1), b3(1, 1), b3(1, 1), b1(1, 1), b1(1, 1)];
  Y = [b2(2, 1), b2(2, 1), b4(2, 1), b4(2, 1), b2(2, 1)];
  Z = [p(3, 1), p(3, 1), p(3, 1), p(3, 1), p(3, 1)];
  plot3(X, Y, Z);
  text(p(1, 1), p(2, 1), p(3, 1), sprintf("P (%d, %d, %d)", p(1, 1), p(2, 1), p(3, 1)));
  hold on
  
  % primary arm lengths
  a1j1 = calc_length(calc_vector(a1, j1));
  a2j2 = calc_length(calc_vector(a2, j2));
  a3j3 = calc_length(calc_vector(a3, j3));
  a4j4 = calc_length(calc_vector(a4, j4));
  % secondary arm lengths
  j1b1 = calc_length(calc_vector(j1, b1));
  j2b2 = calc_length(calc_vector(j2, b2));
  j3b3 = calc_length(calc_vector(j3, b3));
  j4b4 = calc_length(calc_vector(j4, b4));
  
  % draw the first arm
  if is_natural(j1)
    X = [a1(1, 1), j1(1, 1), b1(1, 1)];
    Y = [a1(2, 1), j1(2, 1), b1(2, 1)];
    Z = [a1(3, 1), j1(3, 1), b1(3, 1)];
    plot3(X, Y, Z);
    
    text(a1(1, 1), a1(2, 1), a1(3, 1), "A1");
    text(j1(1, 1), j1(2, 1), j1(3, 1), "J1");
    text(b1(1, 1), b1(2, 1), b1(3, 1), "B1");
    
    txtPos = calc_midpoint(a1, j1);
    text(txtPos(1, 1), txtPos(2, 1), txtPos(3, 1), num2str(a1j1, 2));
    txtPos = calc_midpoint(j1, b1);
    text(txtPos(1, 1), txtPos(2, 1), txtPos(3, 1), num2str(j1b1, 2));
    
    hold on
  endif
  
  % draw the second arm
  if is_natural(j2)
    X = [a2(1, 1), j2(1, 1), b2(1, 1)];
    Y = [a2(2, 1), j2(2, 1), b2(2, 1)];
    Z = [a2(3, 1), j2(3, 1), b2(3, 1)];
    plot3(X, Y, Z);
    
    text(a2(1, 1), a2(2, 1), a2(3, 1), "A2");
    text(j2(1, 1), j2(2, 1), j2(3, 1), "J2");
    text(b2(1, 1), b2(2, 1), b2(3, 1), "B2");
    
    txtPos = calc_midpoint(a2, j2);
    text(txtPos(1, 1), txtPos(2, 1), txtPos(3, 1), num2str(a2j2, 2));
    txtPos = calc_midpoint(j2, b2);
    text(txtPos(1, 1), txtPos(2, 1), txtPos(3, 1), num2str(j2b2, 2));
    
    hold on
  endif
  
  % draw the third arm
  if is_natural(j3)
    X = [a3(1, 1), j3(1, 1), b3(1, 1)];
    Y = [a3(2, 1), j3(2, 1), b3(2, 1)];
    Z = [a3(3, 1), j3(3, 1), b3(3, 1)];
    plot3(X, Y, Z);
    
    text(a3(1, 1), a3(2, 1), a3(3, 1), "A3");
    text(j3(1, 1), j3(2, 1), j3(3, 1), "J3");
    text(b3(1, 1), b3(2, 1), b3(3, 1), "B3");
    
    txtPos = calc_midpoint(a3, j3);
    text(txtPos(1, 1), txtPos(2, 1), txtPos(3, 1), num2str(a3j3, 2));
    txtPos = calc_midpoint(j3, b3);
    text(txtPos(1, 1), txtPos(2, 1), txtPos(3, 1), num2str(j3b3, 2));
    
    hold on
  endif
  
  % draw the fourth arm
  if is_natural(j4)
    X = [a4(1, 1), j4(1, 1), b4(1, 1)];
    Y = [a4(2, 1), j4(2, 1), b4(2, 1)];
    Z = [a4(3, 1), j4(3, 1), b4(3, 1)];
    plot3(X, Y, Z);
    
    text(a4(1, 1), a4(2, 1), a4(3, 1), "A4");
    text(j4(1, 1), j4(2, 1), j4(3, 1), "J4");
    text(b4(1, 1), b4(2, 1), b4(3, 1), "B4");
    
    txtPos = calc_midpoint(a4, j4);
    text(txtPos(1, 1), txtPos(2, 1), txtPos(3, 1), num2str(a4j4, 2));
    txtPos = calc_midpoint(j4, b4);
    text(txtPos(1, 1), txtPos(2, 1), txtPos(3, 1), num2str(j4b4, 2));
    hold off
  endif
  
  % draw the labels
  xlabel('x');
  ylabel('y');
  zlabel('z');
endfunction