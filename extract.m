a= imread('Test_images\baby.bmp');
g = rgb2gray(a);
imB=a;
imB(:,:,1:2)=0;
imG=a;
imG(:,:,1:2:3) =0;
imR=a;
imR(:,:,2:3)=0;
subplot(3,2,1),imshow(a);
subplot(3,2,2),imshow(g);
subplot(3,2,3),imshow(imB);
subplot(3,2,4),imshow(imG);
subplot(3,2,5),imshow(imR);

