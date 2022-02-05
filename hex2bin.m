function binario = hex2bin(hexadecimal)
            binario='';
            binario=append(binario,dec2bin(hex2dec(hexadecimal(1))));
            for ii=2:length(hexadecimal)
                binario=append(binario,dec2bin(hex2dec(hexadecimal(ii)),4));
            end
        end