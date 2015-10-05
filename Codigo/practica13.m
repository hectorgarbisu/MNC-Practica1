clear all;
clc;
%% Qué es una esfera
R = 1;
Nt = 20;
Np = 40;
theta =linspace(0,pi,Nt);
phi = linspace(0,2*pi,Np);
[Theta,Phi] = meshgrid(theta,phi);
X = R*sin(Theta).*cos(Phi);
Y = R*sin(Theta).*sin(Phi);
Z = R*cos(Theta);
%% primera esfera
subplot(2,2,1)
surf(X,Y,Z);
axis equal;
axis([-1 1 -1 1 -0.2 0.2])
axis off;
title('Sin luz','Background','White','EdgeColor','Blue')
%% segunda esfera
subplot(2,2,2)
surf(X,Y,Z);
axis equal;
axis off;
axis([-1 1 -1 1 -0.2 0.2])
light('Position',[0 -1 1])
light
material shiny
title('Shiny','Background','White','EdgeColor','Blue')
%% tercera esfera
subplot(2,2,3)
surf(X,Y,Z);
axis equal;
axis off;
axis([-1 1 -1 1 -0.2 0.2])
light('Position',[0 -1 1])
light
material dull
title('Dull','Background','White','EdgeColor','Blue')
%% cuarta esfera
subplot(2,2,4)
surf(X,Y,Z);
axis equal;
axis off;
axis([-1 1 -1 1 -0.2 0.2])
light('Position',[0 -1 1])
material metal
title('Metal','Background','White','EdgeColor','Blue')
%%
set(gcf,'color','black');