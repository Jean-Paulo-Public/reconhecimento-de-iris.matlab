function prewittAF = Mediana(i,f,prewittAF)
for c=2:i-1
             for d=2:f-1
                 J = [prewittAF(c-1,d-1),prewittAF(c,d-1),prewittAF(c+1,d-1),prewittAF(c-1,d),prewittAF(c,d),prewittAF(c+1,d),prewittAF(c-1,d+1),prewittAF(c,d+1),prewittAF(c+1,d+1)];
                 J = sort(J);
                 prewittAF(c,d) = J(5);
             end
end