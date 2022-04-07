%Exercise1
t = [0 3 5 8 13];
d = [0 225 383 623 993];
s = [75 77 80 74 72];

x = [10];

res = HermitePol(t,d,s,x)

%Exercise2
x = [1 2];
f = [0 0.6931];
deriv = [1 0.5];
X = 1.5;

res = HermitePol(x,f,deriv,X);
display(res)

val = log(1.5);
err = abs(val-res);
display(err)

%Exercise3
interv = [-5 : 0.1 : 5];
f = @(x) sin(2*x);
f_der = @(x) 2 * cos(2*x);
f_vals = f(interv);

t = linspace(-5, 5, 15);
d = f(t);
v = f_der(t);

hermite = HermitePol(t,d,v,interv);

hold on;
plot(interv, f_vals, 'b');
plot(interv, hermite, 'rx');