% read image 
x = imread('S:/my.jpeg');  

% convert RGB to Grayscale
y = rgb2gray(x);

% convert Grayscale to Black and White 
z = im2bw(y);

%figure show in image
figure;
subplot(1,3,1) ; imshow(x) ; title('RGB');
subplot(1,3,2) ; imshow(y) ; title('gray');
subplot(1,3,3) ; imshow(z) ; title('B W');
