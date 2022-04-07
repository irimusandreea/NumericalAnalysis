a = [1 2 3]
b = [4; 5; 6]
d = [4 5 6]

e = a.^2
f = a.*d
c = a*b
g = a.^d

p=[2 -5 0 8]
x=2
rez=polyval(p,x)

p=[1 -5 -17 21]
x=2
r=roots(p)

f=exp(10.*x.*(x-1)).*sin(12.*pi.*x)
x = 0:0.01:1
plot(x,f)



t = 0:0.1:10*pi
a = 1
b = 2
x = (a+b).*cos(t) - b.*cos((a/b + 1).*t)
y = (a+b).*sin(t) - b.*sin((a/b + 1).*t)
plot(x,y)
plot(x,y,'*r')

x = 0:0.01:2*pi
f1=cos(x)
f2=sin(x)
f3=cos(2.*x)
plot(x, f1, 'r')
plot(x, f2, 'r')
plot(x, f3, 'r')

x = -1:0.1:0
f1 = x.^3 + sqrt(1-x)
t = 0:0.1:1
f2 = t.^3 - sqrt(1-t)
plot(x, f1, 'r')
hold on
plot(t, f2, 'b')

x = 0:2:50
f1 = x./2
t = 1:2:49
f2 = 3.*t + 1
plot(x, f1, 'ob')
hold on
plot(t, f2, '*g')


x = -2:0.1:2;
y = -4:0.1:4;
[X,Y] = meshgrid(x,y);
g = -exp((X-1/2).^2+(Y-1/2).^2);
mesh(X,Y,g)



