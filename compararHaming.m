function [porc] = compararHaming(I, C)
[l, c] = size(I);
G = I;
A = C;

aux = 0;
for i=1:l
    for j=1:c
        if G(i,j) ~= A(i,j)
            aux = aux +1;
        end
    end
end

total = l * c;
disp ("total: " +total +" aux: " +aux);
porc = (aux * 100)/total;
disp (porc + "%");
end