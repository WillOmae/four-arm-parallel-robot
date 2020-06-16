function build_export_matrix(r1, r2, L1, L2)
 m = zeros(51 ^ 3, 28);
 count = 1;
 for i=0:10:500
  for j=0:10:500
   for k=0:10:500
    [j1x1, j1x2, j1z1, j1z2] = calc_joint_pos(r1, r2, L1, L2, i, j, k);
    [j2y1, j2y2, j2z1, j2z2] = calc_joint_pos(r1, r2, L1, L2, j, i, k);
    [j3x1, j3x2, j3z1, j3z2] = calc_joint_pos(-r1, -r2, L1, L2, i, j, k);
    [j4y1, j4y2, j4z1, j4z2] = calc_joint_pos(-r1, -r2, L1, L2, j, i, k);
    
    [theta11, theta12] = calc_joint_angles(r1, j1x1, j1x2, j1z1, j1z2);
    [theta21, theta22] = calc_joint_angles(r1, j2y1, j2y2, j2z1, j2z2);
    [theta31, theta32] = calc_joint_angles(r1, j3x1, j3x2, j3z1, j3z2);
    [theta41, theta42] = calc_joint_angles(r1, j4y1, j4y2, j4z1, j4z2);
    
    m(count, 1:4) = [count, i, j, k];
    m(count, 5:8) = [j1x1, j1x2, j1z1, j1z2];
    m(count, 9:10) = [theta11, theta12];
    m(count, 11:14) = [j2y1, j2y2, j2z1, j2z2];
    m(count, 15:16) = [theta21, theta22];
    m(count, 17:20) = [j3x1, j3x2, j3z1, j3z2];
    m(count, 21:22) = [theta31, theta32];
    m(count, 23:26) = [j4y1, j4y2, j4z1, j4z2];
    m(count, 27:28) = [theta41, theta42];
    
    count = count + 1
   endfor
  endfor
 endfor
endfunction
