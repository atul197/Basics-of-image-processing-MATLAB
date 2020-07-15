a= imread('Test_images\deer4.jpg');
b = rgb2gray(a);
%c = imhist(b);
subplot(2,2,1),imhist(b),title('orig img');
s = reshape(b,1,[]);
unq = unique(s);
[r,c] = histc(s,unq);
subplot(2,2,2),bar(unq,r),title('hist of img'),ylabel('no of pixels'),xlabel('intensity');
imgeq = histeq(b);
subplot(2,2,3),imhist(imgeq),title('enhance the contrast');
s= reshape(imgeq,1,[]);
unq = unique(s);
[r,c] = histc(s,unq);
subplot(2,2,4),bar(unq,r),title('histogram after enhancement'),ylabel('no of pixels'),xlabel('intensity')