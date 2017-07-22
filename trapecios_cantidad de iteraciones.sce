function I=trapecio(x,y,n)
    I=0;
    for i=1:n
        I=(y(i)+y(i+1))*(x(i+1)-x(i))+I;
    end
    I=I/2;
endfunction

//x es un vector de puntos pertenecientes al intervalo en que se integra
//y es un vector que tiene las imagenes de los puntos anteriores
//n es la cantidad de iteraciones en que se debe correr el algoritmo
