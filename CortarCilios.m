function  Img = CortarCilios(MascaraExterna,i,f,InicioH)
Img = MascaraExterna;
        for a=2:i-1
          for b=2:f-1
             if a<InicioH
               Img(a,b)=256;
             else 
               Img(a,b)=MascaraExterna(a,b);  
             end
          end
        end