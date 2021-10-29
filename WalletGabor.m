function Img = WalletGabor(image, tamanho, orientacao, minimo, fator, ...
			    sigmaOnf, dOtOnSigma)

% transformada de Fourier
[linhas,colunas] = size(image);
imagefft = fft2(image); 
x = ones(linhas,1) * (-colunas/2 : (colunas/2 - 1))/colunas; 
y = (-linhas/2 : (linhas/2 - 1))' * ones(1,colunas)/linhas;    
radianos = sqrt(x.^2 + y.^2);
%Remove o zero para conseguir passar pela função
radianos(linhas/2+1, colunas/2+1) = 1;
% distancia angular entre x e y
Ot = atan2(y,x);       
SenOt = sin(Ot);
CosOt = cos(Ot);          

% Aplicando Log Gabor
for i = 1:tamanho
    wavelength = minimo*fator^(i-1);
% Centro de frequencia do filtro.
    OrigemDaFrequencia = 1.0/wavelength;    
    logGabor = exp((-(log(radianos/OrigemDaFrequencia)).^2) / (2 * log(sigmaOnf)^2)); 
% Até a frequencia 0, a função de log  é 0
    logGabor(round(linhas/2+1),round(colunas/2+1)) = 0; 
end
% Filtro de Log Gabor
for j = 1:orientacao
%Angulo do filtro.
    angle = (j-1)*pi/orientacao;
% valor inicial do filtro.  
    wavelength = minimo;            
    DeltaSen = SenOt * cos(angle) - CosOt * sin(angle);
    DeltaCos = CosOt * cos(angle) + SenOt * sin(angle);
    dOt = abs(atan2(DeltaSen,DeltaCos));
%Desvio padrão da função gausiana angular
    OtSigma = pi/(orientacao/dOtOnSigma);
    Diferenca = exp((-dOt.^2) / (2 * OtSigma^2));  
    for i = 1:tamanho
        filter = fftshift(logGabor .* Diferenca);
        Img = ifft2(imagefft .* filter);
% Somente pega partes reais da imagem
        Img = real(Img); 
% Calculo da wavelength para o próximo filtro
        wavelength = wavelength * fator;
    end       
end