function p=generaPrimoNdigitos(minDigitos,maxDigitos)
    if minDigitos>=maxDigitos
        warning('El número mínimo de dígitos debe ser menor que el número máximo de dígitos.');
        aux=minDigitos;
        minDigitos=maxDigitos;
        maxDigitos=aux;
    end
    if minDigitos <= 0
        limMin=0;
    else
        limMin=10^(minDigitos-1);
    end
    if maxDigitos>=9
        limMax=10^9-1;
    else
        limMax=10^(maxDigitos)-1;
    end
    p=uint64(0);
    p=randi([10^minDigitos,limMax],1,1);
    while ~isprime(p)
        p=randi([10^(minDigitos-1),limMax],1,1,'double');
    end
    p=uint64(p);
end