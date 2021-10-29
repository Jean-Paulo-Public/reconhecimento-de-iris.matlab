function prewitt = Negativo(i,f,prewitt)
for a=2:i-1
  for b=2:f-1
     if prewitt(a,b)==0
       prewitt(a,b)=256;
     else 
       prewitt(a,b)=0;  
     end
  end
end