%This function plots the solution to the Schr\{o}dinger
wave equation. First, save the file in a suitable folder
and change the matlab environment to that particular
folder. One can call the function by giving a suitable
value for the time and position, note here that the
position is an array of numbers.

function [ result ] = schrqd( t,x )%Name of the function.
dmn = size(x);%Size of the position array.
x_d = dmn(2);
result = zeros(size(x));%Providing the size of result.
sum_t = zeros(size(x));%Providing the size of sum_t

%For loop to recursively compute the solution.
for i = 1:x_d
for j = 0:1000
sum_t(i) = sum_t(i) + (sin(((2*j+1)*x(i))+((2*j+1)^2)*t)/(2*j+1));
end
end

%For loop to compute the final solution.
for k = 1:x_d
result(k) = (2/(pi*i))*sum_t(k);
end
plot(x,real(result)); % Plot the real part of solution
xlabel('x ','FontSize',14); % Labeling the x axis
ylabel('u(t,x)','FontSize',14); % Labeling the y axis
title('Solution to the Schrodinger wave equation at t = 2
\pi','FontSize',14); ;% Providing the title to the graph.
end
