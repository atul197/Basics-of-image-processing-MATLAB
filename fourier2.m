a = imread('Test_images\baloom1.jpg');
b = imread('Test_images\lena.bmp');
a = rgb2gray(a);
b = rgb2gray(b);
a = imresize(a, [512 512]);
b = imresize(b, [512 512]);
c = fft2(a);
d = fft2(b);
e = angle(fft2(a));
f = angle(fft2(b));
g = ifft2(abs(c).*exp(i*f));
h = ifft2(abs(d).*exp(i*e));
x = fftshift(abs(c));
y = fftshift(abs(d));
k = abs(c);
l = abs(d);
for p = [1 256]
    for q = [1 256]
        k(p,q)=0;
    end
end

for p = [168 336]
    for q = [168 336]
        l(p,q)=0;
    end
end
% for p = [256 512]
%     for q = [1 512]
%         l(q,p)=0;
%     end
% end
l(1,1) = 0;

r = ifft2(k.*exp(i*e));
s = ifft2(l.*exp(i*f));
r = uint8(r);
s = uint8(s);

subplot(2,4,1), imshow(a);title('original')
subplot(2,4,5), imshow(b);
subplot(2,4,2), imshow(uint8(g));title('mix-match')
subplot(2,4,6), imshow(uint8(h));
subplot(2,4,3), imshow(255*mat2gray(x));title('fourier')
subplot(2,4,7), imshow(255*mat2gray(y));
subplot(2,4,4), imshow(r);title('high/low freq')
subplot(2,4,8), imshow(s);
