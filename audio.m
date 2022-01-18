[y, fs] = audioread('Path');

sound(15*y , fs);

figure;
plot(15*y);