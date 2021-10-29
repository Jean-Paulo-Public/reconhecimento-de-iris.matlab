function prewittAF = Fechamento(i,f,prewitt)
prewittAF = prewitt;
            for a = 3:i-2
                for b=3:f-2
                    if prewitt(a,b)==255
                        prewittAF(a,b) = 255;
                        prewittAF(a-1,b) = 255;
                        prewittAF(a+1,b) = 255;
                        prewittAF(a,b-1) = 255;
                        prewittAF(a,b+1) = 255;

                        prewittAF(a+1,b-1) = 255;
                        prewittAF(a+1,b+1) = 255;
                        prewittAF(a-1,b-1) = 255;
                        prewittAF(a-1,b+1) = 255;

                        prewittAF(a+2,b) = 255;
                        prewittAF(a+1,b+1) = 255;
                        prewittAF(a+1,b-1) = 255;
                        prewittAF(a-2,b) = 255;
                        prewittAF(a-1,b+1) = 255;
                        prewittAF(a-1,b-1) = 255;            
                        prewittAF(a,b-2) = 255;
                        prewittAF(a,b+2) = 255;

                        prewittAF(a+2,b-1) = 255;
                        prewittAF(a+2,b+1) = 255;
                        prewittAF(a-2,b-1) = 255;
                        prewittAF(a-2,b+1) = 255;            
                        prewittAF(a-1,b-2) = 255;
                        prewittAF(a+1,b-2) = 255;
                        prewittAF(a-1,b+2) = 255;
                        prewittAF(a+1,b+2) = 255;
                    else
                        prewittAF(a,b) = 0;
                    end
                end
            end
