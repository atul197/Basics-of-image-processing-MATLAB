a = imread('Test_images\deer4.jpg');
a = imresize(a,[256 256]);
[r c] = size(a);
x = rgb2gray(a);
x = double(x);
filter = [ 1 1 -3; 1 -2 1; 1 1 0];
f2 = [-1 0.9 -1;0.3 4 0.3; -1 1.4 -1];%to get a sharp image
f2 = double(f2);
fm = [0.11 0.11 0.11;0.11 0.11 0.11;0.11 0.11 0.11];%mean of the matrix
b = fliplr(filter);
%filter = d;
result = a;
for i=2:r-1
    for j=2:c-1
        sum =0;
        row =0;
        col =1;
        for k=i-1:i+1
            row = row+1;
            col = 1;
            for l = j-1:j+1
                sum = sum + a(k,l)*filter(row,col);
                col= col+1;
            end
        end
        result(i,j) = sum;
    end 
end
subplot(3,2,1),imshow(uint8(a)),title('orig img');
subplot(3,2,2),imshow(uint8(result)),title('correlation');
fil = imfilter(a,filter);
subplot(3,2,3),imshow(uint8(fil)),title('correlation using convolution');
min = ordfilt2(rgb2gray(result),1,ones(3,3));
subplot(3,2,4),imshow(uint8(min)),title('min filter');
max = ordfilt2(rgb2gray(result),9,ones(3,3));
subplot(3,2,5),imshow(uint8(max)),title('max filter');
subplot(3,2,6),imshow(uint8(conv2(rgb2gray(x),f2))),title('correlation using convolution');



                
                