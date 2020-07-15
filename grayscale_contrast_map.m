a = imread('D:\wctp\Test_images\lena.bmp');
a = rgb2gray(a);
a = imresize(a,[512 512]);
a = padarray(a,[1 1]);
a = double(a);
b = a;
for i = 2:513
    for j = 2:513
        s = 0;
        for k = i-1:i+1
            for l = j-1:j+1
                s = s+abs(a(k,l)-a(i,j));
            end
        end
        b(i,j) = s/8;
    end
end
f = fspecial('gaussian',1,4);
a = conv2(a,f);
a = imresize(a,[256 256]);
a = padarray(a,[1 1]);
c = a;

for i = 2:257
    for j = 2:257
        s = 0;
        for k = i-1:i+1
            for l = j-1:j+1
                s = s+abs(a(k,l)-a(i,j));
            end
        end
        c(i,j) = s/8;
    end
end
f = fspecial('gaussian',1,4);
a = conv2(a,f);
a = imresize(a,[128 128]);
a = padarray(a,[1 1]);
d = a;
for i = 2:129
    for j = 2:129
        s = 0;
        for k = i-1:i+1
            for l = j-1:j+1
                s = s+abs(a(k,l)-a(i,j));
            end
        end
        d(i,j) = s/8;
    end
end
f = fspecial('gaussian',1,4);
a = conv2(a,f);
a = imresize(a,[64 64]);
a = padarray(a,[1 1]);
e = a;
for i = 2:65
    for j = 2:65
        s = 0;
        for k = i-1:i+1
            for l = j-1:j+1
                s = s+abs(a(k,l)-a(i,j));
            end
        end
        e(i,j) = s/8;
    end
end
f = fspecial('gaussian',1,4);
a = conv2(a,f);
a = imresize(a,[32 32]);
a = padarray(a,[1 1]);
g = a;
for i = 2:33
    for j = 2:33
        s = 0;
        for k = i-1:i+1
            for l = j-1:j+1
                s = s+abs(a(k,l)-a(i,j));
            end
        end
        g(i,j) = s/8;
    end
end
b = imresize(b,[512 512]);
c = imresize(c,[512 512]);
d = imresize(d,[512 512]);
e = imresize(e,[512 512]);
g = imresize(g,[512 512]);
a = uint8(a);
b = uint8(b);
c = uint8(c);
d = uint8(d);
e = uint8(e);
g = uint8(g);
b = im2bw(b,0.05);
c = im2bw(c,0.05);
d = im2bw(d,0.05);
e = im2bw(e,0.05);
g = im2bw(g,0.05);
% imshow(b|c|d);
x = b|c|d;
s = strel('square',3);
for i = 1:5000
    y = imerode(x,s);
end

% for i = 1:1000
%     y = imdilate(x,s);
% end
imshow(y);