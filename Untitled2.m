
%% rotation of the ebsd orientation
function ebsdr = rotateOrienCA(ebsd,ro)
vector1 = vector3d(0,0,1);
vector2 = vector3d(sqrt(3)/2,-1/2,0);
vector3 = vector3d(0,0,1);
vector4 = vector3d(0.527,-0.850,0);
% annotate([vector3d.X,vector3d.Y,vector3d.Z],'lable',{'X','Y','Z'},'backgoundcolor','w');

aa = symmetrise(ebsd.orientations);
cs = aa.CS;
ss = aa.SS;
if strcmp(ro,'shear_band')
%rotate  perpendicular direction to the shear band
rot = orientation('map',vector1,vector2,cs,ss);
end
if strcmp(ro,'surface')
%rotate  perpendicular direction to the surface
rot = orientation('map',vector3,vector4,cs,ss);
end

ebsdr = rotate(ebsd,rot,'keepXY');

