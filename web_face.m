w = webcam;
fd = vision.CascadeObjectDetector('FrontalFaceCART');
img = w.snapshot;
img = imresize(img,[256 256]);
BB = step(fd,img);
iimg = InsertObjectAnnotation(img,'rectangle',BB,'Face');
imshow(iimg),title('detected face');
