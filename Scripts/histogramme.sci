function histogramme(img_in)  ;

//1.création d'un tableau
hist = zeros(256,1);

sizeX= size(img_in, 1);
sizeY= size(img_in, 2);

//2.boucle for 
for i = 1:sizeX
    for j= 1:sizeY
        pixelValue = img_in(i,j);
        hist(pixelValue+1) = hist(pixelValue+1) +1;
    end        
end

figure;
plot(hist);
endfunction
