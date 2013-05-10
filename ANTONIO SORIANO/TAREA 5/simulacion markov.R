#Tasa para ir del estado 1 al 2 = 2
#Tasa para ir del estado 2 al 1 = 3
#Probabilidad para definir la distirbucion inicial
X=0 #Variable que guardara los estados de la cadena
T=0 #Variable que guardara los tiempos de cambio de estado
p=0.5
y=runif(1)
if(y<p)  X[1]=1  else  X[1]=2

#Generacion de los tiempos de cambio de estado


for (i in 1:20){
  X[i+1]=X[i]+(-1)^(i+X[1])
  if (i==1) T[1]=rexp(1,X[i]+1) else T[i]=rexp(1,X[i]+1)+T[i-1]
}
#Grafica del proceso de markov
par(mfrow=c(1,1))
plot(T,X[1:20],ylab="Estados",yaxp=c(2,1,1), type="s",main="Proceso Markov a Timpo Continuo",col=4)


#simulacion de 1000 trayectorias y obtenemos X_10

#Tasa para ir del estado 1 al 2 = 2
#Tasa para ir del estado 2 al 1 = 3
#Probabilidad para definir la distirbucion inicial
R=0
for (k in 1:1000){
X=0 #Variable que guardara los estados de la cadena
T=0 #Variable que guardara los tiempos de cambio de estado
p=0.5
y=runif(1)
if(y<p)  X[1]=1  else  X[1]=2

#Generacion de los tiempos de cambio de estado

i=2
T[1]=0

while (T[i-1]<=10){
  X[i]=X[i-1]+(-1)^((i-1)+X[1])
  if (i==2) T[2]=rexp(1,X[i-1]+1) else T[i]=rexp(1,X[i-1]+1)+T[i-1]
  i=i+1
 }
 R[k]=X[length(X)-1]
}
P2=mean(R-1)
P1=1-mean(R-1)

#Distribucion Teorica vs Distribucion Historica
Q=cbind(c(-2,3),c(2,-3))
P_t=expm(10*Q)
v=cbind(p,1-p)
v%*%P_t
cbind(P1,P2)
hist(R,xlab="ESTADOS", main="DISTRIBUCION EMPIRICA", col='blue')
#####################
#Metodo de Euler#
options(digits=6)
Q=cbind(c(-2,3),c(2,-3))
h=0.333

P=diag(1,2)
k=floor(10/h)
for (i in 1:k){
  P=P+h*(Q%*%P)
}
P
expm(10*Q)


options(digits=6)
Q=cbind(c(-2,3),c(2,-3))
h=0.328

P=diag(1,2)
k=floor(10/h)
for (i in 1:k){
  P=P+h*(Q%*%P)
}
P
expm(10*Q)

options(digits=6)
Q=cbind(c(-2,3),c(2,-3))
h=0.325

P=diag(1,2)
k=floor(10/h)
for (i in 1:k){
  P=P+h*(Q%*%P)
}
P
expm(10*Q)