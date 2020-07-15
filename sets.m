p = imread('Test_images\baloom1.JPG');
q = imread('Test_images\Tomato2.jpg');
a = rgb2gray(p);
b = rgb2gray(q);
x = im2bw(a);
d = im2bw(b);
c = imresize(x,[1368 1712]);
subplot(4,2,1),imshow(a),title('gray image');
subplot(4,2,2),imshow(b),title('gray image');
subplot(4,2,3),imshow(c),title('binary image');
subplot(4,2,4),imshow(d),title('binary image');
e = 255-a;
subplot(4,2,5),imshow(e),title('complement image');
f = c&d;
subplot(4,2,6),imshow(f),title('union');
g = c|d;
subplot(4,2,7),imshow(g),title('intersection');
i = 255-d;
h = c&i;
subplot(4,2,8),imshow(h),title('negation')

