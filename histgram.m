% Histgram and histgram matching 
i = imread('S:/my.jpeg');
n = imread('S:/background.jpg');

x = rgb2gray(i);
y = rgb2gray(n);

% histgram in image x , y 
q1 = histeq(x);
q2 = histeq(y);

%histgram matching between image Q1 ,Q2
e1 = imhistmatch(q1,q2);

%figure show in image
figure;
subplot(3,4,1) ; imshow(x) ; title('image x');
subplot(3,4,2) ; imhist(x) ; title('hist x');

subplot(3,4,3) ; imshow(q1) ; title('image histeq 1');
subplot(3,4,4) ; imhist(q1) ; title('hist 1');

subplot(3,4,5) ; imshow(y) ; title('image y');
subplot(3,4,6) ; imhist(y) ; title('hist y');

subplot(3,4,7) ; imshow(q2) ; title('image histeq 2');
subplot(3,4,8) ; imhist(q2) ; title('hist 2');

subplot(3,4,9) ; imshow(e1) ; title('image histeq 2');
subplot(3,4,10) ; imhist(e1) ; title('hist 2');