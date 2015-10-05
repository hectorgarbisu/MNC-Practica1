clear
figure;
hold on;
grid on;
axis equal;
axis([-0.1 1.1 -0.2 0.2]);
whitebg('white');
title('NACA - Héctor Garbisu')
[x,y] = NACA4(2215);
plot(x,y,'b-');
box on
hold off;