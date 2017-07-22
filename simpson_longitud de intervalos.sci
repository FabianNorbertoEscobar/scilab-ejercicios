function I=simpson(a,b,h,f)
    x=a+h;
    I1=0;
    I2=0;
    while x<b+h
        I2=I2+f(x);
        x=x+h;
        I1=I1+f(x);
        x=x+h;
    end
    I=(2+I1+4*(I2+f(x))+f(a)+f(b))*h/3;
endfunction

//a es el extremo inferior del intervalo
//b es el extremo superior del intervalo
//h es la longitud de cada intervalo --> h=(b-a)/(2*n)
//f es la función a integrar
