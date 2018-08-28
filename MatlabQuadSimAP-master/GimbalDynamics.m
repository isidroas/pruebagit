Gimbal.rolldotdot=GimbalModel([Gimbal.rolldot,Gimbal.tauroll]);
Gimbal.tiltdotdot=GimbalModel([Gimbal.tiltdot,Gimbal.tautilt]);

Gimbal.rolldot=Quad.Ts*Gimbal.rolldotdot+Gimbal.rolldot;
Gimbal.tiltdot=Quad.Ts*Gimbal.tiltdotdot+Gimbal.tiltdot;

Gimbal.roll=Quad.Ts*Gimbal.rolldot+Gimbal.roll;
Gimbal.tilt=Quad.Ts*Gimbal.tiltdot+Gimbal.tilt;
