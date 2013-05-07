k =[10];
aux = k(length(k));
while length(k)<1000
    k =[10];
    aux = k(length(k));
    while (aux > 0)
        k =[k;2*binornd(aux,.5)];
        aux =k(length(k));
    endwhile
endwhile
plot(k)
