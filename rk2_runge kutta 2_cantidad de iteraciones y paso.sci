function T=rk2(t,y,F,n,h)
    T=[t    y];
    for i=1:n
        k1=F(t,y)*h;
        t=t+h;
        k2=F(t,y+k1)*h;
        y=y+(k1+k2)/2;
        T=[T;t  y];
    end
endfunction

//t es el valor inicial del tiempo
//y es la imagen del tiempo inicial
//F es la funcion a aproximar en cierto valor
//n es la cantidad de iteraciones a realizar
//h es el paso entre dos tiempos consecutivos
