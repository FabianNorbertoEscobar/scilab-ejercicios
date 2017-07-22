function newton_raphson(a,n,f,f1)
    for i=1:n
        a=a-f(a)/f1(a);
    end
endfunction

//a es la aproximación inicial
//n es la cantidad de iteraciones
//f es la función para la que busco un cero
//f1 es la derivada de la función anterior
