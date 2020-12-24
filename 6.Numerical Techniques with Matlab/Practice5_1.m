 %% Generate Data
 x = 0:5;                   %collected data
 y = [0 10 25 36 52 59];    %collected data
 xq = 0:0.01:5;             %x query data
  
 %% Linear Fitting
 p1 = polyfit(x,y,1);       %polynomial fitting
 y1 = polyval(p1, xq);      %find values for each query data point
 figure; subplot(221); plot(x,y,'s');
 hold on; plot(xq,y1); hold off; 
 axis([0 5 0 60]); grid on;
 title('First-Degree (Linear) Fit','fontsize',12)
 ylabel('km/h','fontsize',12)
 
 %% Second-Degree Fitting
 p2 = polyfit(x,y,2);
 y2 = polyval(p2 ,xq);
 subplot(222); plot(x,y,'s');
 hold on; plot(xq,y2); hold off;
 axis([0 5 0 60]); grid on;
 title('Second-Degree Fit','fontsize',12)
 ylabel('km/h','fontsize',12)
 
 %% Fifth-Degree-Degree Fitting
 p5 = polyfit(x,y,5);
 y5 = polyval(p5, xq);
 subplot(223); plot(x,y,'s');
 hold on; plot(xq,y5); hold off;
 axis([0 5 0 100]); grid on;
 title('Fifth-Degree Fit','fontsize',12)
 ylabel('km/h','fontsize',12)
 xlabel('Time-Seconds','fontsize',12)

 %% Tenth-Degree Fitting
 p10 = polyfit(x,y,10);
 y10 = polyval(p10, xq);
 subplot(224); plot(x,y,'s');
 hold on; plot(xq, y10); hold off;
 axis([0 5 0 100]); grid on;
 title('Tenth-Degree Fit','fontsize',12)
 ylabel('km/h','fontsize',12)
 xlabel('Time-Seconds','fontsize',12)