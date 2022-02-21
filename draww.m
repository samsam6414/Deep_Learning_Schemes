
clear;
clc;


load  permittivityDC_test  %load data
load  GP_test  %load data

test =  permittivityDC_test;
true =  GP_test;

x=[-1 1];
y=[1 -1];


G = randperm(3200,1);%想看的資料是第幾筆


cc=[1 1.5];  %顏色上下限A

subplot(2,1,1),imagesc(x,-y, true(:,:,1,G),cc);
axis square;
colormap(jet);colorbar;
xlabel('X-axis (m)','fontsize',12);
ylabel('Y-axis (m)','fontsize',12);
title('ground true');
grid on

subplot(2,1,2),imagesc(x,-y,test(:,:,1,G),cc);
axis square;
colormap(jet);colorbar;
xlabel('X-axis (m)','fontsize',12);
ylabel('Y-axis (m)','fontsize',12);
title('testing answer');
grid on 

axis([-1,1,-1,1])

% set(gca,'xtick',[-1:1:1]);
% set(gca,'ytick',[-1:1:1]);
% yticklabels({'1','0','-1'});

colormapeditor;


