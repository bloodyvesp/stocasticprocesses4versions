u = rand(1500 ,1);
x=[1/2];
for i =1:1500
	x(i+1)=(2+i)/(2+i+1)*x(i)+(u(i)<x(i))/(2+i+1);
endfor
plot(x)
