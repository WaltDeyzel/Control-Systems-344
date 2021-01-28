
Td = 0.14;
wn = 4.75;
zeta =0.081;
C = 0.97;


s = tf('s');

zw2 = 2*zeta*wn;
z = tf('z');

G = tf(C,[1 zw2, wn^2]);
Gz = c2d(G, 0.15, 'zoh')/z;
[num,den] = tfdata(Gz,'v');


Kc = 6.0082;

Dz = Kc*((z^2-1.431*z+0.891))/((z-1)*(z-0.38644));
[num1, num2] = tfdata(Dz, 'v');

temp = (-0.42105*s-0.0324)/(s^2+0.769*s+4.75^2);
tempz = c2d(temp, 0.15, 'zoh');