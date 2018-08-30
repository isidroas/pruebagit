Gimbal.roll=0;
Gimbal.tilt=0;
Gimbal.rolldot=0;
Gimbal.tiltdot=0;
Gimbal.rolldotdot=0;
Gimbal.tiltdotdot=0;
Gimbal.tauroll=0.01;
Gimbal.tautilt=0.005;
cameraThickness=0.15;

Gimbal.control.P=1.5;
Gimbal.control.D=1;
Gimbal.control.I=0.01;

%Coordenadas de la camara
% X_cam=[0 0 0 0];
% Y_cam=[cameraThickness -cameraThickness -cameraThickness cameraThickness];
% Z_cam=[cameraThickness/2 cameraThickness/2  -cameraThickness/2 -cameraThickness/2];
x1=0;
x2=cameraThickness/2;
y1=cameraThickness;
y2=-cameraThickness;
z1=cameraThickness/2;
z2=-cameraThickness/2;
P1=[x1 y1 z1];
P2=[x1 y2 z1];
P3=[x1 y2 z2];
P4=[x1 y1 z2];
P5=[x2 y1 z1];
P6=[x2 y2 z1];
P7=[x2 y2 z2];
P8=[x2 y1 z2];

CameraAngle=30*pi/180;
Lc=1;
C9=[x1-Lc*sin(CameraAngle) Lc*cos(CameraAngle)+y1 z1+Lc*sin(CameraAngle)];
C10=[x2+Lc*sin(CameraAngle) Lc*cos(CameraAngle)+y1 z2-Lc*sin(CameraAngle)];
C11=[x1-Lc*sin(CameraAngle) Lc*cos(CameraAngle)+y1 z2-Lc*sin(CameraAngle)];
C12=[x2+Lc*sin(CameraAngle) Lc*cos(CameraAngle)+y1 z1+Lc*sin(CameraAngle)];
v=[P1;P2;P3;P4;P5;P6;P7;P8;C9;C10;C11;C12];
f=[1 2 3 4;
    5 6 7 8;
    1 2 5 6;
    2 3 7 6;
    4 3 7 8;
    1 4 8 5;
%     9 11 10 12;
    1 9 9 9;
    8 10 10 10;
    4 11 11 11;
    5 12 12 12;
    9 11 11 11;
    10 12 12 12;
    9 12 12 12;
    10 11 11 11];
% [Quad.Xtemp,Quad.Xtemp,Quad.Xtemp]=RotateBFtoCF(X_cam,Y_cam,Z_cam,0,0);
%para la posicion inicial suponemos que el quadrotor esta en el 0,0,0
% gimbalObj=patch('XData',X_cam,'YData',Y_cam,'ZData',Z_cam,'FaceColor','r');
gimbalObj=patch('Faces',f,'Vertices',v,'FaceColor','red');

Gimbal.CamX = get(gimbalObj,'xdata')';
Gimbal.CamY = get(gimbalObj,'ydata')';
Gimbal.CamZ = get(gimbalObj,'zdata')';

