% Practice_3_2
% Plot the following 3D curve using the plot3 function:
% x = sin(t/2c)cos(t)
% y = sin(t/2c)sin(t)
% z = cos(t/2c) 
% where c = 5 and 0<=t<=10pi
c = 5;
t = linspace(0,10*pi,200);
x = sin(t./(2*c)).*cos(t);
y = sin(t./(2*c)).*sin(t);
z = cos(t./(2*c));
plot3(x,y,z), xlabel('x'), ylabel('y'), zlabel('z'), title('Spherical Helix'), grid on;
