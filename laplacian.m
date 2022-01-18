x = imread('S:/my.jpeg');
im1 = rgb2gray(x); 


% edge detection of laplacian
laplacian = fspecial('laplacian');
L = imfilter(im1, laplacian, 'replicate'); 
G = im1 - L;

% edge detection of laplacian center 4 
lap4 = [0 -1 0 ; -1 4 -1 ; 0 -1 0 ];
lap44 = imfilter(im1, lap4, 'replicate'); 
laplacian4 = im1 + lap44 ; 

% edge detection of laplacian center 8 
lap8 = [-1 -1 -1 ; -1 8 -1 ; -1 -1 -1 ];
lap88 = imfilter(im1, lap8, 'replicate'); 
laplacian8 = im1 + lap88 ; 

% edge detection of laplacian_Gussian
laplacian_Gussian = [0 0 -1 0 0  ; 0 -1 -2 -1 0 ; -1 -2 16 -2 -1 ; 0 -1 -2 -1 0 ; 0 0 -1 0 0 ];
L_G = imfilter(im1, laplacian_Gussian, 'replicate'); 
G1 = im1 + L_G ;

%figure show in image
figure;
subplot(4,2,1) ; imshow(im1) ; title('');
subplot(4,2,2) ; imshow(L) ; title('');
subplot(4,2,3) ; imshow(G) ; title('');
subplot(4,2,4) ; imshow(lap44) ; title('');
subplot(4,2,5) ; imshow(laplacian4) ; title('');
subplot(4,2,6) ; imshow(laplacian8) ; title('');
subplot(4,2,6) ; imshow(G1) ; title('');