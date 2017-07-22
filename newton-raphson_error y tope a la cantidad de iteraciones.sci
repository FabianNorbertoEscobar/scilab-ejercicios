function newton_raphson(a,E,t,f,f1)
    b=a-f(a)/f1(a);
    while abs(b-a)>E&t>1
        a=b;
        b=a-f(a)/f1(a);
        t=t-1;
    end
endfunction

//a es la aproximación inicial
//E es la cota del error admitido
//t es un tope a la cantidad de iteraciones por si el método no converge
//f es la función para la que busco un cero
//f1 es la derivada de la función anterior
