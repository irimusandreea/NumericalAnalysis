%Exercise1
%a)
X = [0 pi/2 pi 3.*pi/2 2.*pi];
x = 0:0.001:2*pi;
f = @(x) sin(x);
fx = f(x);

spline(X, f(X), pi/4)
spline(X, [1 f(X) 1], pi/4)

%b)
s = spline (X, f(X), x);
cs = spline (X, [1 f(X) 1], x);

plot(x, s, 'b')
hold on
plot(x, cs, 'g')
hold on
plot(X, f(X), 'r')

%Exercise2
[x,fx] = ginput(5)
t = 0:0.01:1;
s = spline(x, fx, t);
plot(x, fx, 'o')
hold on
plot(t, s, 'r')

%Exercise3
x = [0 3 5 8 13];
f = [0 225 383 623 993];
f1 = [75 77 80 74 72];
distance = spline(x,[0 f 0],10)
speed = spline(x,[0 f1 0],10)