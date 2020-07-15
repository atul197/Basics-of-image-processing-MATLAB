fd = vision.CascadeObjectDetector('FrontalFaceCART');
img = imread('Test_images\images.jpg');
BB = step(fd,img);
disp(BB(1,:));
iimg = insertObjectAnnotation(img,'rectangle',BB,'Face');
imshow(iimg),title('DetectedFace');