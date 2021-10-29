function Mascara = PrencherCirculo(Img, i,f)
Mascara = Img;
pontas=0;
for a=1:i
    inicio = 0;
    fim = 0;
    for b=2:f-1
        if Mascara(a,b)==0 && Mascara(a,b+1)==255 && pontas<3
            pontas = pontas + 1;
            if pontas==1
                inicio = b;
            else
                fim = b;
            end
        end        
    end
    for b=2:f-1
        if Mascara(a,b)==0 && Mascara(a,b-1)==255 && b>=inicio && b<=fim
            Mascara(a,b)=255;
        end
    end
    pontas = 0;
end
