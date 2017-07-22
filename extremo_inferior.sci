function I=extremo_inferior(a,b,n,f)
    h=(b-a)/n;
    x=a;
    I=0;
    for i=1:n
        I=I+f(x);
        x=x+h;
    end
    I=I*h;
endfunction

// a es el extremo inferior del intervalo
// b es el extremo superior del intervalo
// n es la cantidad de iteraciones
// f es la función a integrar en dicho intervalo
