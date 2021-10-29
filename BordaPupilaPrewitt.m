function prewitt = BordaPupilaPrewitt(l,f,Img)
prewitt = Img;
for i=2 : l-1
    for j=2: f-1
        prewitt(i, j)=Img(i-1,j-1)*-1+Img(i-1,j)*-1+Img(i-1,j+1)*-1+Img(i+1,j-1)*1+Img(i+1,j)*1+Img(i+1,j+1)*1+ Img(i-1,j-1)*-1+Img(i-1,j)*0+Img(i-1,j+1)+Img(i,j-1)*-1+Img(i,j+1)+Img(i+1,j-1)*-1+Img(i+1,j+1);
    end
end