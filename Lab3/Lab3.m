%Exercise 1
x = 1930:10:1980;
y = [123203 131669 150697 179323 203212 226505];
xx = [1955 1995];

Lagrange(x,y,xx)

%Exercise 2
x = [100 121 144];
X = [115];

Lagrange(x, sqrt(x), X)

%Exercise 3
x = [0:0.01:10];
f = @(x) 1 + cos(pi * x) ./ (1 + x);

plot(x, f(x), 'r');

x = [linspace(0,10,21)];
X = [0:0.01:10];

Y = Lagrange(x, f(x), X);

hold on
plot(X, Y', 'b')

%Exercise 4
x1 = 0:1:100;
x = x1./10 - 5;
f = 1./(1+x.^2);
plot(x, f, 'b');
hold on
for n = 2:2:8
    for i = 0:1:n
        j = i.*10./n-5;
        h(i+1) = j;
    end
    f1 = 1./(1+h.^2);
    k(:,n/2) = Lagrange(h,f1,x);
    plot (x, k);
    clear h;
    hold on
end
hold off
for i = 1:1:4
    for j = 1:1:101
        l(j) = abs(f(j)-k(j, i));
    end
    Ex1(i) = max(l);
end
Ex = max(Ex1);
