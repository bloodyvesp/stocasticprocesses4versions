#SIMULACION DEL PROCESO POISSON A PARTIR DEL LA SIMULACION DE EXPONENCIALES#

N=20 #NUMERO DE RENOVACIONES
lambda=0.8 #INTENSIDAD 
S=0 #Variable que servira para guardar los tiempos entre renovaciones
T=0 #Variable que servira para guardar los tiempos de renovacion
t=0 #Variable auxiliar para acumular la sumas de los tiempos entre renovaciones

for(i in 1:N){
 S[i]=rexp(1,lambda) #Simulacion de una variable exponencial
 t=S[i]+t
 T[i]=t
}
Nt=seq(1:N)
plot(T,Nt,type="S",main="Proceso Poisson Intensidad 0.8 con 20 Renovaciones",col=4)



#SIMULACION DEL PROCESO POISSON APARTIR DE UNA SIMULACION DE UNA POISSON Y UNIFORMES#

#Spongamos que observamos durante 30 unidades de tiempo
T_N=30
lambda=0.8
#Simulacion de una variable poisson
NT=rpois(1,lambda*T_N)

#Luego entonces tenemos Nt renovaciones en T unidades de tiempo. Por el inciso de la tarea
#Dado T_N=30 sabemos que las Nt renovaciones   son los estadistico de orden de una 
#muestra de tama??o (N_T-1) de una uniforme en (0,T)

T=runif(NT-1,0,T_N)

T=sort(T)
T[NT]=T_N

Nt=seq(1:NT)
plot(T,Nt,type="S",main="Proceso Poisson Intensidad 0.8",col=4)




