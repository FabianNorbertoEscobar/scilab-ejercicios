function y=vector_de_imagenes(x,n,f)
    for i=1:n+1
        y(i)=f(x(i));
    end
endfunction

//x es el vector de puntos que tiene la tabla
//n es la cantidad de puntos de la tabla
//f es la función para la cual se quieren calcular imágenes
