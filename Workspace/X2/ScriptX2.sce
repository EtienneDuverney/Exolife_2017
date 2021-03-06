function img_out = X2(path)

//1.Load image
img_in = readpbm(path);

hist = histogramme(img_in);
n_min = min_hist(hist);
n_max = max_hist(hist);
img = normalisation(img_in, n_min, n_max);
img2 = filtreMedian(img);
img_out = filtreMedian(img2)

//4. Display
display_gray(img_out);

endfunction
