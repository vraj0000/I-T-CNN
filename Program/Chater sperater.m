y=80;
z=80;
nnet=ocrv3;

i=imread('t9.png');
i2=rgb2gray(i);

[h,w]=size(i2);
for j=1:h
for k=1:w
if(i2(j,k) <=150)
i2(j,k)=255;
else
i2(j,k)=0;
end
end
end

L = bwlabel(i2,8);

[r, c] = find(L==1);
Ml = max(c);
Nl = min(c);
Mw = max(r);
Nw = min(r);
a1=i2(Nw:Mw, Nl:Ml);
[R,C] = size(a1);
a1 = padarray(a1,[y z],0,'both');

[r, c] = find(L==2);
Ml = max(c);
Nl = min(c);
Mw = max(r);
Nw = min(r);
a2=i2(Nw:Mw, Nl:Ml);
[R,C] = size(a2);
a2 = padarray(a2,[y z],0,'both');

[r, c] = find(L==3);
Ml = max(c);
Nl = min(c);
Mw = max(r);
Nw = min(r);
a3=i2(Nw:Mw, Nl:Ml);
[R,C] = size(a3);
a3 = padarray(a3,[y z],0,'both');

[r, c] = find(L==4);
Ml = max(c);
Nl = min(c);
Mw = max(r);
Nw = min(r);
a4=i2(Nw:Mw, Nl:Ml);
[R,C] = size(a4);
a4 = padarray(a4,[y z],0,'both');

[r, c] = find(L==5);
Ml = max(c);
Nl = min(c);
Mw = max(r);
Nw = min(r);
a5=i2(Nw:Mw, Nl:Ml);
[R,C] = size(a5);
a5 = padarray(a5,[y z],0,'both');

[r, c] = find(L==6);
Ml = max(c);
Nl = min(c);
Mw = max(r);
Nw = min(r);
a6=i2(Nw:Mw, Nl:Ml);
[R,C] = size(a6);
a6 = padarray(a6,[y z],0,'both');

[r, c] = find(L==7);
Ml = max(c);
Nl = min(c);
Mw = max(r);
Nw = min(r);
a7=i2(Nw:Mw, Nl:Ml);
[R,C] = size(a7);
a7 = padarray(a7,[y z],0,'both');

[r, c] = find(L==8);
Ml = max(c);
Nl = min(c);
Mw = max(r);
Nw = min(r);
a8=i2(Nw:Mw, Nl:Ml);
[R,C] = size(a8);
a8 = padarray(a8,[y z],0,'both');

[r, c] = find(L==9);
Ml = max(c);
Nl = min(c);
Mw = max(r);
Nw = min(r);
a9=i2(Nw:Mw, Nl:Ml);
[R,C] = size(a9);
a9 = padarray(a9,[y z],0,'both');

[r, c] = find(L==10);
Ml = max(c);
Nl = min(c);
Mw = max(r);
Nw = min(r);
a10=i2(Nw:Mw, Nl:Ml);
[R,C] = size(a10);
a10 = padarray(a10,[y z],0,'both');


 a1= imresize(a1,[128,128]);
 a2= imresize(a2,[128,128]);
 a3= imresize(a3,[128,128]);
 a4= imresize(a4,[128,128]);
 a5= imresize(a5,[128,128]);
 a6= imresize(a6,[128,128]);
 a7= imresize(a7,[128,128]);
 a8= imresize(a8,[128,128]);
 a9= imresize(a9,[128,128]);
 a10= imresize(a10,[128,128]);
 
 invert_sp_ch;

 a1 = cat(3, a1, a1, a1);
 a2 = cat(3, a2, a2, a2);
 a3 = cat(3, a3, a3, a3);
 a4 = cat(3, a4, a4, a4);
 a5 = cat(3, a5, a5, a5);
 a6 = cat(3, a6, a6, a6);
 a7 = cat(3, a7, a7, a7);
 a8 = cat(3, a8, a8, a8);
 a9 = cat(3, a9, a9, a9);
 a10 = cat(3, a10, a10, a10);


l1 = classify(nnet, a1);
l2 = classify(nnet, a2);
l3 = classify(nnet, a3);
l4 = classify(nnet, a4);
l5 = classify(nnet, a5);
l6 = classify(nnet, a6);
l7 = classify(nnet, a7);
l8 = classify(nnet, a8);
l9 = classify(nnet, a9);
l10 = classify(nnet, a10);

x=[l1,l2,l3,l4,l5,l6,l7,l8,l9,l10];
image(i);
title(char(x));
drawnow;




