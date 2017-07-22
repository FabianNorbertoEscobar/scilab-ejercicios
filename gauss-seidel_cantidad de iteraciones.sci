function X=gauss_seidel(A,B,n,m)
    X=zeros(1,n);
    for i=1:m
        for k=1:n
            S=0;
            for j=1:k-1
                S=S+A(k,j)*X(j);
            end
            for j=k+1:n
                S=S+A(k,j)*X(j);
            end
            X(k)=(B(k)-S)/A(k,k);
        end
    end
endfunction

// A es la matriz de coeficientes del sistema de ecuaciones
// B es el vector de términos independientes del sistema
// n es la cantidad de ecuaciones del sistema
// m es la cantidad de iteraciones
