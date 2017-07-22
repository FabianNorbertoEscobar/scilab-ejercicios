function pm=biseccion(a,b,f,n)
    for i=1:n
        pm=a+(b-a)/2;
        if f(pm)==0
            return;
        elseif f(a)*f(pm)<=0
            b=pm;
        else
           a=pm;
        end
           pm=a+(b-a)/2;
    end
endfunction

//a es el extremo inferior del intervalo
//b es el extremo superior del intervalo
//f es la función para la que busco un cero
//n es la cantidad de iteraciones
