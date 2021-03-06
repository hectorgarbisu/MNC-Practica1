clear
tabla = ones(64,3);
base = [250 174 24]./255;
for a=2:64
    tabla(a,1) = (base(1)*a/64);
    tabla(a,2:3)= (base(2:3)*a/64)*0.85;
end
    tabla(1,:) = [255 255 0]./255;
    
oropepita2=tabla;
colormap(oropepita2);

imagen = imread('tolkien.gif');
Nf = size(imagen,1);
Nc = size(imagen,2);
C = double(imagen(:,:,1));
R2 = 1;
R1 = 3*Nc*R2/Nf;
theta = linspace(0,2*pi,Nf);
phi = linspace(0,2*pi,Nc);
[Theta,Phi] = meshgrid(theta,phi);
X=(R1+R2.*sin(Theta)).*cos(Phi);
Y=(R1+R2.*sin(Theta)).*sin(Phi);
Z=2.5*R2.*cos(Theta);
material shiny
surf(X,Y,Z,C');
title('\color[rgb]{0 0.5 0.5}The Ring - Hector Garbisu')
shading interp;
camlight
axis equal;
axis off;
colorbar;
cameratoolbar;