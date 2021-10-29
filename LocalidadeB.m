function MinB = LocalidadeB(i,f,Toque) 
MinB=0;
TB=0;
for b=2:f-2
    for a=2:i-2 
        if Toque(a,b)==255 && TB == 0
          TB = 1;
        end
    end
    if TB == 1 && MinB == 0
        MinB = b;
    end
    TB = 0;    
end