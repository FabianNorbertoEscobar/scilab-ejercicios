function I=trapecio(a,b,n,f)
    h=(b-a)/n;
    x=a+h;
    I=0;
    for i=1:n-1
        I=I+f(x);
        x=x+h;
    end
    I=(h/2)*(2*I+f(a)+f(b));
endfunction

// a es el extremo inferior del intervalo
// b es el extremo superior del intervalo
// n es la cantidad de iteraciones
// f es la función a integrar en dicho intervalo
