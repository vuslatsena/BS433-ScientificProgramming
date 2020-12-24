%Interpolation in 2D practice

%% plot original data
[X,Y] = meshgrid(-4:4);
V = peaks(X,Y); 
figure; subplot(2,2,1);
surf(X,Y,V);
title('Original sample');

%% Linear interpolation 
[Xq,Yq] = meshgrid(-4:0.25:4); %finer query points
Vq = interp2(X,Y,V,Xq,Yq);
subplot(2,2,2);
surf(Xq,Yq,Vq);
title('Linear Interpolation using fine grid');

%% Cubic interpolation
Vq = interp2(X,Y,V,Xq,Yq,'cubic');
subplot(2,2,3);
surf(Xq,Yq,Vq);
title('Cubic Interpolation using fine grid');

%% Cubic-spline interpolation
Vq = interp2(X,Y,V,Xq,Yq,'spline');
subplot(2,2,4);
surf(Xq,Yq,Vq);
title('Spline Interpolation using fine grid');




