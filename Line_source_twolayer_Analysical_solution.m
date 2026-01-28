% line source field, Wneeer array, Equation 10 in the paper
% AB=3£º3£º120
clear all;
clc;
R1=200; % resistivity of the first layer
R2=20;  % second layer
k=(R2-R1)/(R2+R1);
I=1;    % current intensity
m=50;
z=5;
rho_m=zeros(40,1);
for i=1:40
    L=2*i;
    a=i;
    U1=0;
    for n=1:m
        U1=U1+k^n*log((L^2+(2*n*z)^2)/(a^2+(2*n*z)^2));
    end
    U2=(1/log(L/a))*U1;
    rho_m(i)=R1*(1+U2);
end
rho_m