function histCumul_out = histCumul(img_in);
    
//1.création d'un tableau
//hist = zeros(256,1);
hist = histogramme(img_in);
histCumul_out = zeros(256,1)

sizeX= size(img_in, 1);
sizeY= size(img_in, 2);

//3. Boucle for - Hustogramme cumulé

histCumul_out(1,1) = hist (1,1);
for i = 2:256
        histCumul_out(i,1) = histCumul_out (i-1, 1) + hist (i, 1);
end

figure;
plot(histCumul_out);
endfunction
