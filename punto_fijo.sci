function b=punto_fijo(b,n,f)
    for i=1:n
        b=f(b);
    end
endfunction

//b es la primera aproximación de punto fijo
//n es la cantidad de iteraciones
//f es la función para la que busco un punto fijo
