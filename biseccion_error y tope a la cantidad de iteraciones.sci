function pm=biseccion(a,b,f,E,t)
    error=(b-a)/2;
    pm=a+error;
    while error>E&t>1
        if f(pm)==0
            return;
        elseif f(a)*f(pm)<=0
            b=pm;
        else
           a=pm;
        end
        error=error/2;
        pm=a+error;
        t=t-1;
    end
endfunction

//a es el extremo inferior del intervalo
//b es el extremo superior del intervalo
//f es la función para la que busco un cero
//E es la cota del error admitido
//t es un tope a la cantidad de iteraciones por si el método no converge
