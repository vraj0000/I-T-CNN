imds = imageDatastore('X:\School\MSU Polytechnic EC (Deploma)\Object recogntion project (deeplearning) 2018-19\t\*.png');
ii = randi(6);
i = imread(imds.Files{ii});
r = i(:,:,1); % Red channel
nnet=ocrv3;

a1=r(1:128, 1:128);
a2=r(1:128, 129:256);
a3=r(1:128, 257:384);
a4=r(1:128, 385:512);
a5=r(1:128, 513:640);
a6=r(1:128, 641:768);
a7=r(1:128, 769:896);
a8=r(1:128, 897:1024);
a9=r(1:128, 1025:1152);
a10=r(1:128, 1153:1280);



d1 = cat(3, a1, a1, a1);
d2 = cat(3, a2, a2, a2);
d3 = cat(3, a3, a3, a3);
d4 = cat(3, a4, a4, a4);
d5 = cat(3, a5, a5, a5);
d6 = cat(3, a6, a6, a6);
d7 = cat(3, a7, a7, a7);
d8 = cat(3, a8, a8, a8);
d9 = cat(3, a9, a9, a9);
d10 = cat(3, a10, a10, a10);


l1 = classify(nnet, d1);
l2 = classify(nnet, d2);
l3 = classify(nnet, d3);
l4 = classify(nnet, d4);
l5 = classify(nnet, d5);
l6 = classify(nnet, d6);
l7 = classify(nnet, d7);
l8 = classify(nnet, d8);
l9 = classify(nnet, d9);
l10 = classify(nnet, d10);

x=[l1,l2,l3,l4,l5,l6,l7,l8,l9,l10];
image(i);
title(char(x));
drawnow;
    