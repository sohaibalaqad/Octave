x = [0 0 0 0 1 0 0 0 0];
y = [1 2 3 2 8];

%convolution
con = conv(x, y);

%correlation
corr = xcorr(x, y);

%figure show in image
figure;
subplot(1,2,1) ; stem(con) ; title('convolution');
subplot(1,2,2) ; stem(corr) ; title('correlation');