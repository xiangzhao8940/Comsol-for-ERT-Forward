% Point source field, Wenner array, Equation 5 in the paper
clear all;
clc;
nb_points = 50;
nb_images = 50;
rho_h1 = 100; 
rho_v1 = 400; 
rho_n1 = sqrt(rho_v1*rho_h1);
rho_h2 = 10; 
rho_v2 = 40; 
rho_n2 = sqrt(rho_v2*rho_h2);
kn = (rho_n2-rho_n1)/(rho_n2+rho_n1);
f = sqrt(rho_v1/rho_h1);     % coefficient of anisotropy
z = 5;
n = 2; % dipole-dipole separation
rho_aa = zeros(nb_points,1);
summ = zeros(nb_points,1);
p = zeros(nb_points,1);
r1 = zeros(nb_points,1);
r2 = zeros(nb_points,1);
r3 = zeros(nb_points,1);
r4 = zeros(nb_points,1);
for i = 1:40 %nb_points   %1£º50
    % Wenner
    a = i/2;
    L = 3*i/2;
    summ(i) = 0;
    operande = 0;
    for m = 1:nb_images     %1£º50
        operande = 1/sqrt((L-a)^2+(2*m*z)^2)-1/sqrt((L+a)^2+(2*m*z)^2);
        operande = ((L^2-a^2)/(2*a))*kn^m*operande;
        summ(i) = summ(i) + operande;
    end
    rho_aa(i) = rho_n1*(1+2*summ(i));
end
rho_aa = rho_aa(1:40);
data = importdata('Simulat_point_source_twolayer.txt');
rho_calc = data(1:end);
pingjunzhi = (rho_calc-rho_aa)./rho_aa;
Average = sum(abs(pingjunzhi))/40
