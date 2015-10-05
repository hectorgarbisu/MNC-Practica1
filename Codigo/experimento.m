clear all;
clc;
R1 = 3;
R2 = 1;
Nt = 20;
Np = 50;
% generamos el mallado
theta =linspace(0,2*pi,Nt);
phi = linspace(0,2*pi,Np);
[Theta,Phi] = meshgrid(theta,phi);
% generamos las coordenadas de los puntos
X = (R1 + R2*cos(Theta)).*cos(Phi);
Y = (R1 + R2*cos(Theta)).*sin(Phi);
Z = R2*sin(Theta);
X2 = (R1 + R2*cos(Theta)).*cos(Phi)+pi;
Z2 = (R1 + R2*cos(Theta)).*sin(Phi);
Y2 = R2*sin(Theta);
% visualizamos
figure('Color','Black')
hold on
surf(X,Y,Z);
surf(X2,Y2,Z2);
title('Toro - Héctor Garbisu')
axis equal;
axis off;
set(gca,'color','black');
cameratoolbar;
colormap 'default';
hold off