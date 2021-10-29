function  Img = RemoverCilios(MascaraExterna,InicioH)
Img = MascaraExterna;
[i,f] = size(MascaraExterna);
        for a=2:i-1
          for b=2:f-1
             if a<InicioH
               Img(a,b)=0;
             else 
               Img(a,b)=MascaraExterna(a,b);  
             end
          end
        end