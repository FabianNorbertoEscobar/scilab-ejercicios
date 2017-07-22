function [T,Y] = taylor (t0,y0,N,H)
    y1=0
    yi=0
    T(1)=t0
    y(1)=y0
    for i=2 : N+1
        T(i)=T(i-1)+H
        y1=[T(i-1)^2]*cos(y(i-1))
        y2=2*[T(i-1)*cos(y(i-1))]+[T(i-1)^4]*sin(y(i-1))*cos(y(i-1))
        yi=y(i-1)+y1*H+y2*[(H^2)/2]
    end
endfunction
