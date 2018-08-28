Gimbal.rollTotal=Gimbal.roll+Quad.theta;
Gimbal.tiltTotal=Gimbal.tilt+Quad.phi;
Gimbal.rollDes=0;
Gimbal.tiltDes=0;
Gimbal.rollErr=Gimbal.rollDes-Gimbal.rollTotal;
Gimbal.tiltErr=Gimbal.tiltDes-Gimbal.tiltTotal;

Gimbal.tauroll=Gimbal.control.P*Gimbal.rollErr;
Gimbal.tautilt=Gimbal.control.P*Gimbal.tiltErr;