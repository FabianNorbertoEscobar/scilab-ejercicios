function salida=newton(f,f1,p0,tol,n)
    i=1;
    while i<=n
        p=p0-f(p0)/f1(p0);
        if abs (p-p0)<tol
            salida=p;
            return;
        end
        i=i+1;
        p0=p;
    end
    salida='El método falló luego de algunas iteraciones';
endfunction
