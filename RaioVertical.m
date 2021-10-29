function MaxV = RaioVertical(i,f,prewitt)  
MaxV = 0;
for b=2:f-2
    Aux=0;    
    for a=2:i-2 
      if prewitt(a,b)==255
          Aux = Aux + 1;
      end

    end

    if Aux>MaxV
        MaxV=Aux;
    end
end