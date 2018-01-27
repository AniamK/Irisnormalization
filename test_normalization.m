clear;
clc;
% imageInput = iris image
% xcp,ycp,rp coordinates of pupil
% xci,yci,ri = coordinates of iris boundaries
% sizeX,sizeY = size of imageOutput
% imageOutput =  iris normalize
imageInput = imread('S1001L07.jpg');
xcp = 137;
ycp = 153;
rp = 54;
xci = 136;
yci = 153;
ri = 112;
sizeX = 100;
sizeY = 200;
for degree = 0:360;
    %r=ri-rp;
    for r=rp:ri;
        %xp = xcp+r*cosd(degree);
        %yp = ycp+r*sind(degree);
        xi = xci+r*cosd(degree);
        yi = yci+r*sind(degree);
        %xp = floor(xp);
        %yp = floor(yp);
        xi = floor(xi);
        yi = floor(yi);
        %if(r>rp)
            %imageOutput((r-rp+1),(degree+1)) = imageInput(xp,yp);
            imageOutput((r-rp+1),(degree+1)) = imageInput(xi,yi);
        %end
        %imageOutput1(r,degree) = imageInput(xp,yp);
        %imageOutput2(r,degree) = imageInput(xi,yi);
        %imageInput(xp,yp) = 255;
        %imageInput(xi,yi) = 255;
    end
end

imshow(imageOutput);