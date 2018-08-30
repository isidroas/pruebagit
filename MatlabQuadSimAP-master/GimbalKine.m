clear all;
clc
syms q1 q2 theta alpha d a
PI = sym('pi');
%q1=0;q2=0;
syms L0 L1
MH1=[cos(theta) -sin(theta) 0 0;
    sin(theta)  cos(theta) 0 0;
    0           0           1 0;
    0           0           0 1]
MH2=[1 0 0 0;
     0 1 0 0;
     0 0 1 d;
     0 0 0 1]
MH3=[1 0 0 a;
     0 1 0 0;
     0 0 1 0;
     0 0 0 1]
MH4=[1 0          0           0;
     0 cos(alpha) -sin(alpha) 0;
     0 sin(alpha) cos(alpha) 0;
     0 0          0           1]
MH=MH1*MH2*MH3*MH4
R_BA=DHMatrix(-PI/2,0,0,PI/2)^-1;
R_A0=DHMatrix(0,0,-L0,0);
R_01=DHMatrix(q1,L1,0,PI/2);
R_12=DHMatrix(q2,0,0,0);
R_B2=R_BA*R_A0*R_01*R_12