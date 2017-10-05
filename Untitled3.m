% figure
plotx2west
% % plot(ebsd('Gold'),ebsd('Gold').orientations)
% % hold on
% % plot(ebsd('Copper'),ebsd('Copper').orientations)
% % figure
% % oM = ipdfHSVOrientationMapping(ebsd('Gold').orientations);
% %   plot(oM)
% % hold off
% ebsd2 = ebsd('Copper');
% aa = symmetrise(ebsd2.orientations);
% cs = aa.CS;
% ss = aa.SS;
% [grains,ebsd2.grainId,ebsd2.mis2mean] = calcGrains(ebsd2, 'angle', 15*degree);
% grains2 = grains( grains.grainSize >= 15);
% grainboundary = grains2.boundary;
% GG = grainboundary('Copper','Copper');
% plot(GG,GG.misorientation.angle./degree,'linewidth',2)
% mtexColorbar
% 
% twinning = orientation('map',Miller(1,1,1,cs),Miller(1,1,-1,cs),...
%   Miller(1,-1,1,cs),Miller(-1,1,1,cs));
% 
% isTwinning = angle(GG.misorientation,twinning) < 10*degree;
% twinBoundary = GG(isTwinning);
plot(grainsv1,grainsv1.grainSize)
hold on 
plot(grainsv2,grainsv2.grainSize)
hold on
plot(grainsv3,grainsv3.grainSize)
hold on
plot(grainsv4,grainsv4.grainSize)

mtexColorbar
% plot the twinning boundaries
% plot( grains,grains.misorientation.angle./degree,'linewidth',2)
% mtexColorbar
%plot(ebsd('indexed'),ebsd('indexed').orientations)
% hold on

% plot(GG,'linecolor','k','linewidth',0.5,'displayName',' boundary')
% hold on
% plot(twinBoundary,'linecolor','w','linewidth',4,'displayName','twin boundary')
% hold off

% figure
% plot(ebsd3,ebsd3.mis2mean.angle./degree)
% hold on 
% mtexColorbar
% hold off
% figure
% hist(ebsd3.mis2mean.angle./degree)