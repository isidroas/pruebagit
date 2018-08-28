Gimbal.roll=0;
Gimbal.tilt=0;
Gimbal.rolldot=0;
Gimbal.tiltdot=0;
Gimbal.rolldotdot=0;
Gimbal.tiltdotdot=0;
Gimbal.tauroll=0.01;
Gimbal.tautilt=0.005;
cameraThickness=0.15;

Gimbal.control.P=0.5;
Gimbal.control.D=0.01;
Gimbal.control.I=0.01;

%Coordenadas de la camara
X_cam=[0 0 0 0];
Y_cam=[cameraThickness -cameraThickness -cameraThickness cameraThickness];
Z_cam=[cameraThickness/2 cameraThickness/2  -cameraThickness/2 -cameraThickness/2];
[Quad.Xtemp,Quad.Xtemp,Quad.Xtemp]=RotateBFtoCF(X_cam,Y_cam,Z_cam,0,0);
%para la posicion inicial suponemos que el quadrotor esta en el 0,0,0
gimbalObj=patch('XData',X_cam,'YData',Y_cam,'ZData',Z_cam,'FaceColor','r');

