function p=epol(Di,X,p0,k)
    p0=Di(k+1);
    for j=k:-1:1
        p0=Di(j)+p0*(x-X(j));
    end
endfunction

//Di es el vector de diferencias divididas
//X es el vector con los puntos de la tabla a interpolar
//x es el punto a evaluar con el polinomio interpolador
//k es la cantidad de puntos que tiene la tabla

//esta función evalúa un polinomio interpolador en formato de newton usando el algoritmo de horner
//es la función scilab que me pidieron en el parcial
