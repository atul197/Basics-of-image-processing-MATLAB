v = VideoReader('traffic.avi');
i=1;
while i<100
   im = read(v,i);
   imgray = rgb2gray(im);
   im1 = read(v,i+2);
   imgray1 =rgb2gray(im1);
   imdiff = imgray1 - imgray
   imshow(imdiff);
   i = i+2;
end
    