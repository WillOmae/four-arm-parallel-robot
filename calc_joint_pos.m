function [x1, x2, z1, z2] = calc_joint_pos(R1, R2, L1, L2, Px, Py, Pz)  
 M = (2 * Pz);
 N = -(L1 ^ 2) + (L2 ^ 2) - (R2 ^ 2) + (R1 ^ 2) - (2 * Px * R2) - (Px ^ 2) - (Py ^ 2) - (Pz ^ 2);
 K = (2 * R1) - (2 * Px) - (2 * R2);
 E = M / K;
 F = N / K;
 ## quadratic formula
 a = (E ^ 2) + 1;
 b = (2 * E * F) - (2 * R1 * E);
 c = (F ^ 2) - (2 * R1 * F) + (R1 ^ 2) - (L1 ^ 2);
 
 z1 = (-b + sqrt((b ^ 2) - (4 * a * c))) / (2 * a);
 z2 = (-b - sqrt((b ^ 2) - (4 * a * c))) / (2 * a);
 x1 = (E * z1) + F;
 x2 = (E * z2) + F;
endfunction
