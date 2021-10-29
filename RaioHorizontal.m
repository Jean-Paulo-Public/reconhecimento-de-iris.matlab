function MaxH = RaioHorizontal(i,f,prewitt)
MaxH = 0;
for a=2:i-2
    AuxH=0;
    for b=2:f-2

      if prewitt(a,b)==255
          AuxH = AuxH + 1;
      end
    end
    if AuxH>MaxH
        MaxH=AuxH;
    end
end

