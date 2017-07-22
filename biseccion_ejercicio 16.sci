function salida=biseccion(f,a,b,tol,n)
    i=0;
    FA=f(a);
    while i<=n
        p=a+(b-a)/2;
        FP=f(p);
        if FP==0|(b-a)/2<tol
            salida=p;
            return;
        end
        i=i+1;
        if FA*FP>0
            a=p;
            FA=FP;
        else
            b=p;
        end
    end
    salida='El método falló luego de algunas iteraciones';
endfunction
