function prewitt = BinarizarL255(i,f,Img)
prewitt = Img;
for i=2 : i-1
    for j=2: f-1
        if prewitt(i, j)<255 
            prewitt(i, j)=0;
        else
            prewitt(i, j)=255;
        end
    end     
end