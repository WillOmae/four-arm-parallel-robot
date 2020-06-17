## x-axis-> out of screen
## y-axis-> horizontal
## z-axis-> vertical
## all units are in mm

################################################################################
############################## design parameters ###############################
################################################################################
## plate dimensions
r1 = 200;                       # radius of baseplate
r2 = 100;                       # radius of secondary platform
## positions of motors/revolute joints
a1 = [r1; 0; 0];                # position of first motor/revolute joint
a2 = [0; r1; 0];                # position of second motor/revolute joint
a3 = [-r1; 0; 0];               # position of third motor/revolute joint
a4 = [0; -r1; 0];               # position of fourth motor/revolute joint
## attachment of secondary arms on secondary platform
b1 = [r2; 0; 0];                # attachment of first arm
b2 = [0; r2; 0];                # attachment of second arm
b3 = [-r2; 0; 0];               # attachment of third arm
b4 = [0; -r2; 0];               # attachment of fourth arm
## arm lengths
L1 = 300;                       # primary arm length
L2 = 530;                       # secondary arm length
################################################################################
############################## output parameters ###############################
################################################################################
## end-effector position
p = [20; 20; -400];
## end-effector rotation angle about Z-axis
rot = 180;
## rotation matrix
R = [cosd(rot), -sind(rot), 0;
     sind(rot), cosd(rot), 0;
     0, 0, 1];
## values of b wrt reference frame
b1 = p + R * b1;
b2 = p + R * b2;
b3 = p + R * b3;
b4 = p + R * b4;
################################################################################
################################# calculations #################################
################################################################################
[j1x1, j1x2, j1z1, j1z2] = calc_joint_pos(rot, r1, r2, L1, L2, p(1, 1), p(2, 1), p(3, 1), 1);
j1 = [j1x1; 0; j1z1];

[j2y1, j2y2, j2z1, j2z2] = calc_joint_pos(rot, r1, r2, L1, L2, p(2, 1), p(1, 1), p(3, 1), -1);
j2 = [0; j2y1; j2z1];

[j3x1, j3x2, j3z1, j3z2] = calc_joint_pos(rot, -r1, -r2, L1, L2, p(1, 1), p(2, 1), p(3, 1), 1);
j3 = [j3x2; 0; j3z2];

[j4y1, j4y2, j4z1, j4z2] = calc_joint_pos(rot, -r1, -r2, L1, L2, p(2, 1), p(1, 1), p(3, 1), -1);
j4 = [0; j4y2; j4z2];

## plot
plot_links(rot, r2, p, a1, a2, a3, a4, b1, b2, b3, b4, j1, j2, j3, j4);