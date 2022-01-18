% intencity transformation function 
xx = imread('S:/my.jpeg');
im = rgb2gray(xx);

% Max level 
L = max(im(:));

%image negateves 
neg_img = L - 1 - im ;

%Logarithmic transformation
z = double(im);
log_img = 0.2 * log(z + 1);

%Power low (gamma)
gamma_img = 0.2 * (z).^0.3 ;

%figure show in image
figure;
subplot(2,2,1) ; imshow(im) ; title('Gray');
subplot(2,2,2) ; imshow(neg_img) ; title('neg');
subplot(2,2,3) ; imshow(log_img) ; title('log'); 
subplot(2,2,4) ; imshow(gamma_img) ; title('gamma'); 