function pm=biseccion(a,b,f,E)
    error=(b-a)/2;
    pm=a+error;
    while error>E
        if f(pm)==0
            return;
        elseif f(a)*f(pm)<=0
            b=pm;
        else
           a=pm;
        end
        error=error/2;
        pm=a+error;
    end
endfunction

//a es el extremo inferior del intervalo
//b es el extremo superior del intervalo
//f es la función para la que busco un cero
//E es la cota del error admitido
