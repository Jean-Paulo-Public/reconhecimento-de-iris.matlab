function Ret = TracarCirculo(Img, LocalidadeDaPupila, RaioDaPupila, i,f)
Ret = Img;
        for a=1:i    
            for b=1:f
              Ret(a,b) = 0;   
              if (((a-LocalidadeDaPupila(2))*(a-LocalidadeDaPupila(2)))+((b-LocalidadeDaPupila(1))*(b-LocalidadeDaPupila(1))))+100 >(RaioDaPupila*RaioDaPupila) && (((a-LocalidadeDaPupila(2))*(a-LocalidadeDaPupila(2)))+((b-LocalidadeDaPupila(1))*(b-LocalidadeDaPupila(1)))-100<(RaioDaPupila*RaioDaPupila))
                Ret(a,b) = 255;
              end    
            end
        end
