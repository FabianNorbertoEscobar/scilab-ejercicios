function y=diferencias_divididas(x,y,n)
    for i=1:n
        for j=n+1:-1:i+1
            y(j)=(y(j)-y(j-1))/(x(j)-x(j-i));
        end
    end
endfunction

//x es el vector de puntos de la tabla a interpolar
//y es el vector de diferencias divididas
//n es la cantidad de puntos que tiene la tabla
