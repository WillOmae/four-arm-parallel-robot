function [theta1, theta2] = calc_joint_angles(r1, Jx1, Jy1, Jx2, Jy2)
 theta1 = atand((abs(Jy1 - 0)) / (Jx1 - r1))
 theta2 = atand((abs(Jy2 - 0)) / (Jx2 - r1))
endfunction
