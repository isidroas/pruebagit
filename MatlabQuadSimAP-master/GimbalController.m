Gimbal.rollTotal=Gimbal.roll+Quad.theta;
Gimbal.tiltTotal=Gimbal.tilt+Quad.phi;

if Quad.init==0
Gimbal.rollErr_ant=0;
Gimbal.tiltErr_ant=0;
Gimbal.rollInt=0;
Gimbal.tiltInt=0;
end

Gimbal.rollDes=0;
Gimbal.tiltDes=0;

Gimbal.rollErr=Gimbal.rollDes-Gimbal.rollTotal;
Gimbal.tiltErr=Gimbal.tiltDes-Gimbal.tiltTotal;

Gimbal.rollErr_der=(Gimbal.rollErr-Gimbal.rollErr_ant)/Quad.Ts;
Gimbal.tiltErr_der=(Gimbal.tiltErr-Gimbal.tiltErr_ant)/Quad.Ts;

Gimbal.rollInt=Gimbal.rollInt+Gimbal.rollErr*Quad.Ts;
Gimbal.tiltInt=Gimbal.tiltInt+Gimbal.tiltErr*Quad.Ts;

Gimbal.tauroll=Gimbal.control.P*Gimbal.rollErr+Gimbal.control.D*Gimbal.rollErr_der;
Gimbal.tautilt=Gimbal.control.P*Gimbal.tiltErr+Gimbal.control.D*Gimbal.tiltErr_der;

Gimbal.rollErr_ant=Gimbal.rollErr;
Gimbal.tiltErr_ant=Gimbal.tiltErr;