% 
% vector1 = [407 174;295 171;427,360;539 355];
% vector2 = [408 576;227 569;234 720;458 720];
% vector3 = [84 0;165 0; 549 563;487 632];
% 
% 
% ebsdv1 = ebsd(inpolygon(ebsd,vector1));
% ebsdv2 = ebsd(inpolygon(ebsd,vector2));
% ebsdv3 = ebsd(inpolygon(ebsd,vector3));
% 
% [grainsv1,ebsdv1.grainId,ebsdv1.mis2mean] = calcGrains(ebsdv1, 'angle', 5*degree);
% [grainsv2,ebsdv2.grainId,ebsdv2.mis2mean] = calcGrains(ebsdv2, 'angle', 5*degree);
% [grainsv3,ebsdv3.grainId,ebsdv3.mis2mean] = calcGrains(ebsdv3, 'angle', 5*degree);
% 
% 
% aa = symmetrise(ebsd('Gold').orientations);
% cs = aa.CS;
% ss = aa.SS;
vector1 = vector3d(0,0,1);
vector2 = vector3d(sqrt(3)/2,-1/2,0);
% vector3 = vector3d(0,0,1);
% vector4 = vector3d(0.527,-0.850,0);
% vector5 = vector3d(0,0,1);
% 
% rot1 = orientation('map',vector1,vector2,cs,ss);
% vx = rot1*xvector;
% vy = rot1*yvector;
% vz = rot1*vector3;
% 
% rot2 = orientation('Euler',0*degree,-30*degree,-90*degree,cs,ss);
% vxe = rot2*xvector;
% vye = rot2*yvector;
% vze = rot2*vector3;
% 
% r1 = rotation('axis',zvector,'angle',30*degree);
% r2 = rotation('axis',xvector,'angle',90*degree);
% vectore = r2*r1*vector2;
% ebsdr3 = rotate(ebsdv3('Gold'),rot1,'KeepXY');
% 
% 
% ebsdr = rotateOrienCA(ebsd('Gold'),'shear_band');
% 
% plotebsd = ebsdr3;
% [plotgrains,plotebsd.grainId,plotebsd.mis2mean] = calcGrains(plotebsd,'angle',5*degree);
% 
%  
%  psi = calcKernel(plotgrains('Gold').meanOrientation);
% odf = calcODF(plotebsd('Gold').orientations,'kernel',psi);
%  
% figure
% cs = ebsd('Gold').CS;
% h = [Miller(1,1,0,odf.CS),Miller(1,1,2,odf.CS),Miller(1,1,1,odf.CS)];
% 
% plotPDF(odf,h,'antipodal','silent','nosymmetry')
%  
% plot(vector1)
% figure
% setMTEXpref('defaultColorMap',LaboTeXColorMap);
% plotIPDF(odf,vector1)
% mtexColorbar

% plot(ebsd,ebsd('Gold').orientations,'direction',vector2)
%  setMTEXpref('zAxisDirection','outOfPlane');
%  figure
%  plot(ebsdr('Gold'),ebsdr('Gold').orientations);
plotPDF(odf,h,'antipodal','silent','nosymmetry')
 