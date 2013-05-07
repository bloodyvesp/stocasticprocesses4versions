tic ;
n =1000;
m =10000;
u = rand (n , m ) ;
r =2;
v =3;
c =1;
x = ones (1,m)*(r/(r+v)) ;
"starting poyla iterations"
for i=1:n
	x(i+1,:)=(r+v+(i -1)*c)/(r+v+i*c).*x(i,:)+(u(i,:)<x(i,:))./( r + v + i * c ) ;
endfor
"finised poyla iterations"
y=sort(x(n+1,:));

"ploting..."
plot(y,(1: m )./m, y, betacdf(y,r/c,v/c))
toc