function [Xtraf,Ytraf,Ztraf] = RotateBFtoCF(X,Y,Z,q1,q2)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
L0=0.15;
L1=0.1;

M=...
[  cos(q2)*sin(q1), -sin(q1)*sin(q2), -cos(q1),    0;
          -sin(q2),          cos(q2),        0,  -L1;
  -cos(q1)*cos(q2),  cos(q1)*sin(q2),  sin(q1),   L0;
                 0,                0,        0,    1];
for i=1:length(X)
    Points(i,:)=M*[X(i);Y(i);Z(i);1];  
    Xtraf(i)=Points(i,1);
    Ytraf(i)=Points(i,2);
    Ztraf(i)=Points(i,3);
end

end

