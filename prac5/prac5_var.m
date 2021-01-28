
Td = 0.14;
wn = 4.75;
zeta =0.081;
C = 0.97;

TD = Td + 0.15/2;
zw2 = 2*zeta*wn;

a = 17;
K = 27;

s2 = zw2+1/TD;
s = wn^2+zw2*1/TD;
l = wn^2*1/TD;

D = K*tf([1  zw2 wn^2],[1 a 0]);
G = tf(C,[1 zw2, wn^2]);
delay = tf(1/TD,[1 1/TD]);

Dz = c2d(D, 0.15, 'tustin');
[num,den] = tfdata(Dz,'v');

A = rad2deg(1/tan(45));
