% sphere, Equation 9 in the paper
clear all;
clc;
R1=200; % the first layer
R2=10;   % sphere
u2=R2/R1;
a=1;  % radius of sphere
I=1;    % current intensity
h0=4; % h
d=sqrt(h0^2+40^2);  % rAO
distance_A=80;
distance_B=160;
distance_o=120;
n=50;
UM1=zeros(39,1);
UM2=zeros(39,1);
for i=1:39
    AM=2*i;
    BM=80-AM;
    rM=sqrt((40-AM)^2+h0^2);
    CosthetaM1=(d^2+rM^2-AM^2)/(2*d*rM);  % cosine theorem
    CosthetaM2=(d^2+rM^2-(80-AM)^2)/(2*d*rM);  % cosine theorem
    U1=0;
    U2=0;
    for n=1:50
        U1=((u2-1)*n/(n+u2*(n+1)))*(a^(2*n+1))/((d^(n+1))*rM^(n+1));
        P1=sum(legendre(n,CosthetaM1));
        U11=U1+P1*U1;
        U2=((u2-1)*n/(n+u2*(n+1)))*(a^(2*n+1))/((d^(n+1))*rM^(n+1));
        P2=sum(legendre(n,CosthetaM2));
        U22=U2+P2*U2;
    end
    UM1(i)=(I*R1/(2*pi))*(1/AM+2*U2);
    UM2(i)=(I*R1/(2*pi))*(1/BM+2*U2);
end
UM=UM1-UM2;