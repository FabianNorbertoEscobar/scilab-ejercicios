function p=horner(D,X,x,N)
    p=D(N+1);
    for j=N:-1:1
        p=D(j)+p*(x-X(j));
    end
endfunction

//D es el vector de diferencias divididas
//X es el vector con los puntos de la tabla a interpolar
//x es el punto a evaluar con el polinomio interpolador
//N es la cantidad de puntos que tiene la tabla
