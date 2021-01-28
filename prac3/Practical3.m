%practical 3

z = 0.11;
wn = 17.1;
k = 250;

b2 = k;
b0 = 0;
a1 = 2*z*wn;
a2 = wn*wn;

A = [0 1; 
    -a2 -a1];
B = [ 0;
      1];
C = [b2 0];
%Controlability
U = [B A*B];
%Observability
V = [C; C*A];

%Question 2

K = [16^2-a2  16-a1];

N = -1/(C*inv(A-B*K)*B);

co = 5;
m1 = (16*co-a1)/b2;
m2 = (16*co)^2/b2 + m1*a1;
M = [m1;m2];

%Question 3

Abar = [ 0 1 0; -a2 -a1 0; b2 0 0];
Bbar = [ 0; 1; 0;];
P = [-8+8i*sqrt(3) -8-8i*sqrt(3)  -12];
kp = [155.59  24.238];
ki = 12.288;

