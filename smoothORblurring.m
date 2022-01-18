x = imread('S:/my.jpeg');
im = rgb2gray(x);

%notse in image 
noise = imnoise(im, 'salt & pepper', 0.2);

%matrix in average 
AV3 = fspecial('average', [3 3]); 
AV5 = fspecial('average', [5 5]); 
AVW = [1 2 1 ; 2 4 2 ; 1 2 1 ]* (1/16);

%smooth  or blurring in average
AV33 = imfilter(im, AV3, 'replicate'); 
AV55 = imfilter(im, AV5, 'replicate'); 
AVWW = imfilter(im, AVW, 'replicate');

%smooth  or blurring in median
med = medfilt2(im)

%figure show in image
figure;
subplot(3,3,1) ; imshow(im) ; title('');
subplot(3,3,2) ; imshow(noise) ; title('');
subplot(3,3,3) ; imshow(AV33) ; title('');
subplot(3,3,4) ; imshow(AV55) ; title('');
subplot(3,3,5) ; imshow(AVWW) ; title('');
subplot(3,3,6) ; imshow(med) ; title('');