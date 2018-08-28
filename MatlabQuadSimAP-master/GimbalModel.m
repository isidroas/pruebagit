function s = GimbalModel(u)
thetadot=u(1);
tau=u(2);
I=0.1;
B=0.04;
thetadotdot=(1/I)*(-thetadot*B+tau);
s=thetadotdot;
end

