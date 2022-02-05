function output=puntoSobreCurvaEliptica(a,b,p)
    y2=@(x)mod(x^3+a*x+b,p);
    output=[];
    while size(output,1)==0
        x=randi([0,p-1],1,1);
        js=mod(jacobiSymbol(y2(x),p),p);
        if js==1
            break;
        end
    end
    for ii=0:p-1
        if mod(ii*ii-y2(x),p)==0
            output=[output;x,ii];
            return
        end
    end
end