x = imread('S:/my.jpeg');
im1 = rgb2gray(x); 

%matrix in average 
AV3 = fspecial('average', [3 3]); 

% smooth or blurring in average
blurred = imfilter(im1, AV3, 'replicate');

% mask befor unsharp
Mask = im1 - blurred ;


% unsharp
unsharp = im1 + Mask ;

% high boost filter 
high_boost = im1 + (100 * Mask);

%figure show in image
figure;
subplot(4,2,1) ; imshow(im1) ; title('');
subplot(4,2,2) ; imshow(blurred) ; title('');
subplot(4,2,3) ; imshow(Mask) ; title('');
subplot(4,2,4) ; imshow(unsharp) ; title('');
subplot(4,2,5) ; imshow(high_boost) ; title('');