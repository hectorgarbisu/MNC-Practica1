clear all;
clc;
figure;
hold on;
grid on;
axis([-20 40 -1 2]);
title('NACA - H�ctor Garbisu')
airfoil = AirfoilNACA644X(20.);
plot(airfoil.alpha,airfoil.CL,'b^-',airfoil.alpha,airfoil.CD,'ro-'); 
legend('CL','CD')
box on
hold off;