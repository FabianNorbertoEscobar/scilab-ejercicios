function newton_raphson(a,E,f,f1)
    b=a-f(a)/f1(a);
    while abs(b-a)>E
        a=b;
        b=a-f(a)/f1(a);
    end
endfunction

//a es la aproximación inicial
//E es la cota del error admitido
//f es la función para la que busco un cero
//f1 es la derivada de la función anterior
