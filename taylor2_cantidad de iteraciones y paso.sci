function T=taylor2(t,y,F,G,n,h)
    T=[t    y];
    for i=1:n
        y=y+F(t,y)*h+G(t,y)*(h^2)/2;
        t=t+h;
        T=[T;t  y];
    end
endfunction

//t es el valor inicial del tiempo
//y es la imagen del tiempo inicial
//F es la funcion a aproximar en cierto valor
//G es la derivada de la función anterior
//n es la cantidad de iteraciones a realizar
//h es el paso entre dos tiempos consecutivos

