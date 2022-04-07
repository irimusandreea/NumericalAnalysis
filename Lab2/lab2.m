%Exercise1
x = 0:0.1:1;
l1 = x;
l2 = 3/2.*x.^2 - 1/2;
l3 = 5/2.*x.^3 - 3/2.*x;
l4 = 35/8.*x.^4 - 15/4.*x.^2 + 3/8;
subplot(2,2,1)
plot(x,l1)
title('First Polynomial')
subplot(2,2,2)
plot(x,l2)
title('Second Polynomial')
subplot(2,2,3)
plot(x,l3)
title('First Polynomial')
subplot(2,2,4)
plot(x,l4)
title('Fourth Polynomial')

%Exercise2
t = -1:0.1:1;
T1 = cos(acos(t));
T2 = cos(2.*acos(t));
T3 = cos(3.*acos(t));
plot(t,T1);
hold on
plot(t,T2);
hold on
plot(t,T3);
hold off







