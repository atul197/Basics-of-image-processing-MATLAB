a = imread('Test_images\deer4.jpg');
i = rgb2gray(a);
subplot(2,2,1),imshow(i),title('image a');
j = imadjust(i);
subplot(2,2,2),imshow(j),title('image b');
k = imadjust(i,[0.3 0.7]);
subplot(2,2,3),imshow(k),title('image c');
k = imadjust(i,[0.3 0.7],[0.7 0.9]);
subplot(2,2,4),imshow(k),title('image d');