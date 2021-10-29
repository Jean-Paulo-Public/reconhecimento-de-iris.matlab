function prewitt = IrisCode(prewitt)
[i, f]=size(prewitt);
for a=2 : i-1
    for j=2: f-1
        if prewitt(a, j)>0.
            prewitt(a, j)=255;
        else
            prewitt(a, j)=0;
        end
    end     
end