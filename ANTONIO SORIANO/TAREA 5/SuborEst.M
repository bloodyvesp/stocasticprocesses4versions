C=1;
e=.000001;
alpha=1/2;
lambda=C/e^alpha;
T=1;
N=poissrnd(lambda*T, 1);
u=T*rand(N,1);
dx=e./rand(N,1).^(1/(alpha));
s=[0;cumsum(dx)];
t=[0;sort(u)];
subplot(1,2,1)
plot(t(2:length(t)),dx)
subplot(1,2,2)
plot(t,s)