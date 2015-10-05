imagen = imread('charlize.jpg');
Nf = size(imagen,1);
Nc = size(imagen,2);
x1 = linspace(0,1,Nc);
y1 = linspace(0,1,Nf)*Nf/Nc;
[X,Y] = meshgrid(x1,y1);
Z = zeros(Nf,Nc);
C = double(imagen(:,:,1));
hold on;
surf(X,Y,Z,C);

shading interp;
colormap gray;
axis equal;
axis off;
whitebg('black');
title('Charlize - Héctor Garbisu');
hold off;
cameratoolbar;
