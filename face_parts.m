ed = vision.CascadeObjectDetector('EyePairBig');
img = imread('Test_images\group.jpg');
BB1 = step(ed,img);
%disp(BB1(1,:));
iimg4 = insertObjectAnnotation(img,'rectangle',BB1,'Eye');
subplot(3,3,1),imshow(iimg4),title('DetectedEye');
nd = vision.CascadeObjectDetector('Nose','MergeThreshold',4);
%img = imread('Test_images\images.jpg');
BB2 = step(nd,img);
disp(BB2(1,:));
iimg1 = insertObjectAnnotation(img,'rectangle',BB2,'nose');
subplot(3,3,2),imshow(iimg1),title('DetectedNose');
md = vision.CascadeObjectDetector('Mouth','MergeThreshold',16);
BB3 = step(md,img);
%disp(BB3(1,:));
iimg2 = insertObjectAnnotation(img,'rectangle',BB3,'Mouth');
subplot(3,3,3),imshow(iimg2),title('DetectedMouth');
fd = vision.CascadeObjectDetector('FrontalFaceCART');
BB4 = step(fd,img);
%disp(BB4(1,:));
iimg3 = insertObjectAnnotation(img,'rectangle',BB4,'Face');
subplot(3,3,4),imshow(iimg3),title('DetectedFace');
bd = vision.CascadeObjectDetector('UpperBody');
BB5 = step(bd,img);
%disp(BB5(1,:));
iimg4 = insertObjectAnnotation(img,'rectangle',BB5,'Body');
subplot(3,3,5),imshow(iimg4),title('DetectedBody');