function I=simpson(a,b,n,f)
    h=(b-a)/n;
    x=a;
    I1=0;
    I2=0;
    for i=1:n
        I1=I1+f((x+x+h)/2);
        x=x+h;
        I2=I2+f(x);
    end
    I2=I2-f(x);
    I=(h/6)*(4*I1+2*I2+f(a)+f(b));
endfunction

// a es el extremo inferior del intervalo
// b es el extremo superior del intervalo
// n es la cantidad de iteraciones
// f es la función a integrar en dicho intervalo
