x = linspace(0, 6, 13);
x2 = 0:0.1:6;
f = @(y) exp(sin(y));
clf;
plot(x, f(x), 'o');
hold on;
plot(x, f(x), 'b');
hold on;
plot(x2, newton(x, f(x), x2), 'r--');
