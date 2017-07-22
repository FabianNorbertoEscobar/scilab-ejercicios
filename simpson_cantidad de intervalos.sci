function I=simpson(a,b,n,f)
    h=(b-a)/(2*n);
    x=a+h;
    I1=0;
    I2=0;
    for i=1:n-1
        I2=I2+f(x);
        x=x+h;
        I1=I1+f(x);
        x=x+h;
    end
    I=(2+I1+4*(I2+f(x))+f(a)+f(b))*h/3;
endfunction

//a es el extremo inferior del intervalo
//b es el extremo superior del intervalo
//n es la cantidad de intervalos
//f es la funcion a integrar
