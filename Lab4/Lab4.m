%Exercise 1
x=[1 1.5 2 3 4];
f=[0 0.17609 0.30103 0.47712 0.60206];
xx=[2.5, 3.25];

s = NewtonMethod(x,f,xx);
display(s)

i = 10:35;
yi = 1/10;
fyi = log10(yi);
rez = max(abs(fyi - NewtonMethod(x,f,yi)))

%Exercise 2
%a) 
x = [1 2 3 4 5];
f = [22 23 25 30 28];
xx= [2.5];
a = NewtonMethod(x,f,xx);

display(a);

%b)
plot(x,f,'r')
hold on
g = [0:0.1:6];
plot(g,NewtonMethod(x,f,g),'b')

x = linspace(0, 6, 13);
f = @(x) exp(sin(x));
fx = f(x);

%Exercise3
x = linspace(0, 6, 13);
f = @(x) exp(sin(x));
fx = f(x);

%plot interpolation points
plot(x,f(x),'*')
hold on;

%plot the function f
plot(x,fx,'r')
hold on;

%plot the Newton interpolation
x2 = linspace(0, 6, 100);
rez = NewtonMethod(x, fx, x2);
plot(x2, rez, 'b')

%Exercise 4
x = 1:2:115;
y = sqrt(x);

m = length(x);

f = [y'];

X = 115;

for i = 1:m
  for j = 1:i-1
    determinant = det([f(j, j), x(j) - X; f(i, j), x(i) - X]);
    f(i, j+1) = 1 / (x(i) - x(j)) * determinant;
  end
end

f(m, m)

%Exercise5
%a)
 xf=[-2 -1 0 1 2];
 yf=3.^xf;
 x=3^(1/2);

 n = length(xf)-1;
 xx=zeros(1,n+1);
 q=zeros(n+1,n+1);
 for i=0:n
	xx(i+1)=xf(i+1);
	q(i+1,1)=yf(i+1);
 end
 d=zeros(1,n+1);
 d(1)=x-xx(1);
 
 for i=1:n
	d(i+1)=x-xx(i+1);
	for j=1:i
		q(i+1,j+1)=(d(i+1)*q(i,j)-d(i-j+1)*q(i+1,j))/(d(i+1)-d(i-j+1));
	end
 end
 fprintf('Interpolation Table evaluated to pt x = %11.8f \n', x)
 for i=0:n
	fprintf('%11.8f ',xx(i+1));
	for j=0:i
		fprintf('%11.8f ',q(i+1,j+1));
	end
	fprintf('\n');
 end
 disp(['From the table, the Intepolated value at ', num2str(x) ' is equal to  ' num2str(q(end,end))])
%b)
 xf=[0 1 2 4 5];
 yf=sqrt(xf);
 x=3^(1/2);

 n = length(xf)-1;
 xx=zeros(1,n+1);
 q=zeros(n+1,n+1);
 for i=0:n
	xx(i+1)=xf(i+1);
	q(i+1,1)=yf(i+1);
 end
 d=zeros(1,n+1);
 d(1)=x-xx(1);
 
 for i=1:n
	d(i+1)=x-xx(i+1);
	for j=1:i
		q(i+1,j+1)=(d(i+1)*q(i,j)-d(i-j+1)*q(i+1,j))/(d(i+1)-d(i-j+1));
	end
 end
 fprintf('Interpolation Table evaluated to pt x = %11.8f \n', x)
 for i=0:n
	fprintf('%11.8f ',xx(i+1));
	for j=0:i
		fprintf('%11.8f ',q(i+1,j+1));
	end
	fprintf('\n');
 end
 disp(['From the table, the Intepolated value at ', num2str(x) ' is equal to ' num2str(q(end,end))])