clear all;
clc;
R1 = 3;
R2 = 1;
Nt = 20;
Np = 50;
theta =linspace(0,2*pi,Nt);
phi = linspace(0,2*pi,Np);
[Theta,Phi] = meshgrid(theta,phi);
X = (R1 + R2*cos(Theta)).*cos(Phi);
Y = (R1 + R2*cos(Theta)).*sin(Phi);
Z = R2*sin(Theta);
cameratoolbar
%% primer toro
subplot(2,2,1)
surf(X,Y,Z);
axis equal;
axis off;
colormap default
freezeColors
title('default ','Background','White','EdgeColor','Blue')
%% segundo toro
subplot(2,2,2)
surf(X,Y,Z);
axis equal;
axis off;
colormap bone
freezeColors
title('bone','Background','White','EdgeColor','Blue')
%% tercer toro
subplot(2,2,3)
surf(X,Y,Z);
axis equal;
axis off;
colormap spring
freezeColors
title('spring','Background','White','EdgeColor','Blue')
%% cuarto toro
subplot(2,2,4)
surf(X,Y,Z);
axis equal;
axis off;
colormap autumn
title('autumn','Background','White','EdgeColor','Blue')
%%
set(gcf,'color','black');