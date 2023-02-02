i=imread('t1.png');
i2 = rgb2gray(i);
for j=1:128
for k=1:1280
if(i2(j,k)==255)
i2(j,k)=0;
else
i2(j,k)=255;
end
end
end
L = bwlabel(i2,4);



[r, c] = find(L==1);
Ml = max(c);
Nl = min(c);
Mw = max(r);
Nw = min(r);
a1=i2(Nw:Mw, Nl:Ml);
[R,C] = size(a1);
if ( (mod(R,2)) == 1)
    R=R+1;
end
if ((mod(C,2)) == 1)
    C=C+1;
end
y=128-R;
z=128-C;
y=y/2;
z=z/2;
a1 = padarray(a1,[y z],0,'both');


[r, c] = find(L==2);
Ml = max(c);
Nl = min(c);
Mw = max(r);
Nw = min(r);
a2=i2(Nw:Mw, Nl:Ml);
[R,C] = size(a2);
if ( (mod(R,2)) == 1)
    R=R+1;
end
if ((mod(C,2)) == 1)
    C=C+1;
end
y=128-R;
z=128-C;
y=y/2;
z=z/2;
a2 = padarray(a2,[y z],0,'both');

[r, c] = find(L==3);
Ml = max(c);
Nl = min(c);
Mw = max(r);
Nw = min(r);
a3=i2(Nw:Mw, Nl:Ml);
[R,C] = size(a3);
if ( (mod(R,2)) == 1)
    R=R+1;
end
if ((mod(C,2)) == 1)
    C=C+1;
end
y=128-R;
z=128-C;
y=y/2;
z=z/2;
a3 = padarray(a3,[y z],0,'both');

[r, c] = find(L==4);
Ml = max(c);
Nl = min(c);
Mw = max(r);
Nw = min(r);
a4=i2(Nw:Mw, Nl:Ml);
[R,C] = size(a4);
if ( (mod(R,2)) == 1)
    R=R+1;
end
if ((mod(C,2)) == 1)
    C=C+1;
end
y=128-R;
z=128-C;
y=y/2;
z=z/2;
a4 = padarray(a4,[y z],0,'both');

[r, c] = find(L==5);
Ml = max(c);
Nl = min(c);
Mw = max(r);
Nw = min(r);
a5=i2(Nw:Mw, Nl:Ml);
[R,C] = size(a5);
if ( (mod(R,2)) == 1)
    R=R+1;
end
if ((mod(C,2)) == 1)
    C=C+1;
end
y=128-R;
z=128-C;
y=y/2;
z=z/2;
a5 = padarray(a5,[y z],0,'both');

[r, c] = find(L==6);
Ml = max(c);
Nl = min(c);
Mw = max(r);
Nw = min(r);
a6=i2(Nw:Mw, Nl:Ml);
[R,C] = size(a6);
if ( (mod(R,2)) == 1)
    R=R+1;
end
if ((mod(C,2)) == 1)
    C=C+1;
end
y=128-R;
z=128-C;
y=y/2;
z=z/2;
a6 = padarray(a6,[y z],0,'both');

[r, c] = find(L==7);
Ml = max(c);
Nl = min(c);
Mw = max(r);
Nw = min(r);
a7=i2(Nw:Mw, Nl:Ml);
[R,C] = size(a7);
if ( (mod(R,2)) == 1)
    R=R+1;
end
if ((mod(C,2)) == 1)
    C=C+1;
end
y=128-R;
z=128-C;
y=y/2;
z=z/2;
a7 = padarray(a7,[y z],0,'both');

[r, c] = find(L==8);
Ml = max(c);
Nl = min(c);
Mw = max(r);
Nw = min(r);
a8=i2(Nw:Mw, Nl:Ml);
[R,C] = size(a8);
if ( (mod(R,2)) == 1)
    R=R+1;
end
if ((mod(C,2)) == 1)
    C=C+1;
end
y=128-R;
z=128-C;
y=y/2;
z=z/2;
a8 = padarray(a8,[y z],0,'both');

[r, c] = find(L==9);
Ml = max(c);
Nl = min(c);
Mw = max(r);
Nw = min(r);
a9=i2(Nw:Mw, Nl:Ml);
[R,C] = size(a9);
if ( (mod(R,2)) == 1)
    R=R+1;
end
if ((mod(C,2)) == 1)
    C=C+1;
end
y=128-R;
z=128-C;
y=y/2;
z=z/2;
a9 = padarray(a9,[y z],0,'both');

[r, c] = find(L==10);
Ml = max(c);
Nl = min(c);
Mw = max(r);
Nw = min(r);
a10=i2(Nw:Mw, Nl:Ml);
[R,C] = size(a10);
if ( (mod(R,2)) == 1)
    R=R+1;
end
if ((mod(C,2)) == 1)
    C=C+1;
end
y=128-R;
z=128-C;
y=y/2;
z=z/2;
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
