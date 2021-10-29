function MinA = LocalidadeA(i,f,Toque)  
MinA=0;
TA=0;
for a=2:i-2
    for b=2:f-2 
        if Toque(a,b)==255 && MinA == 0
          TA = 1;
        end
    end
    if TA == 1
        MinA = a;
    end
    TA = 0;
end