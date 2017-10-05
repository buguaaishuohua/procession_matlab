close all
plotx2west
% plot(ebsd('Gold'),ebsd('Gold').orientations)
% figure
%  plot(ebsd('Copper'),ebsd('Copper').orientations)
% ebsdg = ebsd('Gold');
% ebsdc = ebsd('Copper');
% [grains,ebsd2.grainId,ebsd2.mis2mean] = calcGrains(ebsd2, 'angle', 15*degree);
% grain_selected = grains( grains.grainSize >= 15);
% grain_selected2 = grains(grains.GOS >=0.1 );
% ebsd_selected = ebsd(grain_selected);
% grain_selected.id;

% L = linspace(0,2.*pi,6); xv = 50*cos(L)';yv =100*sin(L)';
% xv = [xv;xv(1)];yv = [yv;yv(1)];
vector1 = [407 174;295 171;427,360;539 355];
vector2 = [408 576;227 569;234 720;458 720];
vector3 = [84 0;165 0; 549 563;487 632];
vector4 = [69 110;39 314;145 503;236 398];

ebsdv1 = ebsd(inpolygon(ebsd,vector1));
ebsdv2 = ebsd(inpolygon(ebsd,vector2));
ebsdv3 = ebsd(inpolygon(ebsd,vector3));
ebsdv4 = ebsd(inpolygon(ebsd,vector4));



%  [grainsv1,ebsdv1.grainId,ebsdv1.mis2mean] = calcGrains(ebsdv1, 'angle', 5*degree);
% [grainsv2,ebsdv2.grainId,ebsdv2.mis2mean] = calcGrains(ebsdv2, 'angle', 5*degree);
% [grainsv3,ebsdv3.grainId,ebsdv3.mis2mean] = calcGrains(ebsdv3, 'angle', 5*degree);
% [grainsv4,ebsdv4.grainId,ebsdv4.mis2mean] = calcGrains(ebsdv4, 'angle', 5*degree);

%  [~,id] = max(grains.area);
%  grain_selected2 = smooth(grains(id));
% ebsd3 = ebsd(grain_selected2);

% % grains2 = smooth(grains(grains.grainSize >10));
% grainsv1 = smooth(grainsv1(grainsv1.grainSize>10));
% grainsv2 = smooth(grainsv2(grainsv2.grainSize>10));
% grainsv3 = smooth(grainsv3(grainsv3.grainSize>10));

%give the ebsd data and grain data to plotebsd and plotgrain
plotebsd = ebsd;

%% rotation
 plotebsd('Gold') = rotateOrienCA(plotebsd('Gold'),'surface');
 plotebsd('Copper') = rotateOrienCA(plotebsd('Copper'),'surface');
% figure
[plotgrains,plotebsd.grainId,plotebsd.mis2mean] = calcGrains(plotebsd,'angle',5*degree);
plotgrains = smooth(plotgrains(plotgrains.grainSize>10));

%% plot ebsd orientation
figure
plot(plotebsd('Gold'),plotebsd('Gold').orientations)
hold on
plot(plotebsd('Copper'),plotebsd('Copper').orientations)
hold off


% plot(plotgrains.boundary,'linewidth',1)
% hold off
%% plot grain size
% 
% figure
% y = plotgrains.grainSize;
% x = 0:0.5:50;
% n = hist(y,x);
% bar(x,n)
% figure
% 
% plot(plotgrains,plotgrains.grainSize)
% mtexColorbar

%% plot misorientaiton
figure

% 
plot(plotebsd,plotebsd.mis2mean.angle./degree,'coordinates','off')
% hold on
% plot(plotgrains.boundary,'linewidth',1,'linecolor','r')

%  mtexColorbar
% hold off
% figure
% 
% hist(plotebsd.mis2mean.angle./degree)
% 
% %% plot grain mean orientation
% figure
% plot(plotgrains('Gold'),plotgrains('Gold').meanOrientation)
% hold on
% plot(plotgrains.boundary,'linewidth',1,'linecolor','r')
% hold off




% figure
% oM = ipdfHSVOrientationMapping(ebsd('Gold').orientations);
%   plot(oM)
  
  
% 
%% plot the odf
%  psi = calcKernel(plotgrains('Gold').meanOrientation);
% odf = calcODF(plotebsd('Gold').orientations,'kernel',psi);
% % %  
% figure
%  cs = plotebsd('Gold').CS;
% % h = [Miller(1,1,0,odf.CS),Miller(1,1,2,odf.CS),Miller(1,1,1,odf.CS)];
% % 
% % plotPDF(odf,h,'antipodal','silent','nosymmetry')
% % %% plot iodf
% v1 = vector3d(0,0,1);
% v2 = vector3d(sqrt(3)/2,-1/2,0);
% v3 = vector3d(0,0,1);
% v4 = vector3d(0.527,-0.850,0);
% % figure
% plotIPDF(odf,[v1 v2 v4])
% mtexColorbar



% figure
% plotIPDF(plotebsd('Gold').orientations,[v1 v2],'points',100)
% hold on
% plotIPDF(plotebsd('Copper').orientations,[v1 v2],'points',100)
% hold off
% plotPDF(ebsd3('Gold').orientations,h,'antipodal')
% hist(ebsd.mad)
% % plot(grains)
% hold on
% bnd_GG =  plotgrains.boundary('Gold','Gold');
% bnd_GC =  plotgrains.boundary('Gold','Copper');
% bnd_CC =  plotgrains.boundary('Copper','Copper');
% % plot(bnd_G,'linecolor','r')
% hold off
% 
% figure
% plot(bnd_GG,bnd_GG.misorientation.angle./degree,'linewidth',2)
% hold on
% plot(bnd_GC,bnd_GC.misorientation.angle./degree,'linewidth',2)
% hold on
% plot(bnd_CC,bnd_CC.misorientation.angle./degree,'linewidth',2)
% plot(plotgrains.boundary)
% % mtexColorMap blue2red
% mtexColorbar
% figure
% GM = [bnd_GG.misorientation.angle./degree;...
%     bnd_GC.misorientation.angle./degree;...
%     bnd_CC.misorientation.angle./degree];
% %     
% plotAngleDistribution(plotgrains.boundary('Gold','Gold').misorientation,...
%   'DisplayName','Gold-Gold')
% figure
% plotAngleDistribution(plotgrains.boundary('Gold','Copper').misorientation,...
%   'DisplayName','Gold-Copper')
% figure
% plotAngleDistribution(plotgrains.boundary('Copper','Copper').misorientation,...
%   'DisplayName','Copper-Copper')
% % 
% legend('show','Location','northwest')


%  
% mtexColorbar
% 
% hold off
% 
% figure
% plotAngleDistribution(grains2.boundary('Gold','Gold').misorientation,...
%   'DisplayName','Gold-Gold')
% 
% legend('show','Location','northwest')

