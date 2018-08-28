clear Quad.Xtemp Quad.Ytemp Quad.Ztemp
[Quad.Xtemp,Quad.Ytemp,Quad.Ztemp]=RotateBFtoCF(X_cam,Y_cam,Z_cam,Gimbal.roll,Gimbal.tilt);
[Quad.Xtemp,Quad.Ytemp,Quad.Ztemp]=rotateBFtoGF(Quad.Xtemp,Quad.Ytemp,Quad.Ztemp,Quad.phi,Quad.theta,Quad.psi);
set(gimbalObj,'xdata',Quad.Xtemp+Quad.X,'ydata',-(Quad.Ytemp+Quad.Y),'zdata',-(Quad.Ztemp+Quad.Z))