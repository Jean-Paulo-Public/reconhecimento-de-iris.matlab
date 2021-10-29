function prewittAF = Abertura(i,f,prewitt)
prewittAF = prewitt;
for a=3:i-2
    for b=3:f-2
        if prewitt(a,b)==0
            prewittAF(a,b) = 0;
            prewittAF(a-1,b) = 0;
            prewittAF(a+1,b) = 0;
            prewittAF(a,b-1) = 0;
            prewittAF(a,b+1) = 0;

            prewittAF(a+1,b-1) = 0;
            prewittAF(a+1,b+1) = 0;
            prewittAF(a-1,b-1) = 0;
            prewittAF(a-1,b+1) = 0;

            prewittAF(a+2,b) = 0;
            prewittAF(a+1,b+1) = 0;
            prewittAF(a+1,b-1) = 0;
            prewittAF(a-2,b) = 0;
            prewittAF(a-1,b+1) = 0;
            prewittAF(a-1,b-1) = 0;            
            prewittAF(a,b-2) = 0;
            prewittAF(a,b+2) = 0;

            prewittAF(a+2,b-1) = 0;
            prewittAF(a+2,b+1) = 0;
            prewittAF(a-2,b-1) = 0;
            prewittAF(a-2,b+1) = 0;            
            prewittAF(a-1,b-2) = 0;
            prewittAF(a+1,b-2) = 0;
            prewittAF(a-1,b+2) = 0;
            prewittAF(a+1,b+2) = 0;

        else
            prewittAF(a,b) = 255;
        end
    end
end 