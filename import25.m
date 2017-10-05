%% Import Script for EBSD Data
%
% This script was automatically created by the import wizard. You should
% run the whoole script or parts of it in order to import your data. There
% is no problem in making any changes to this script.

%% Specify Crystal and Specimen Symmetries

%  crystal symmetry
CS = {... 
  'notIndexed',...
  crystalSymmetry('m3m', [4.07 4.07 4.07], 'mineral', 'Gold'  , 'color', 'light blue'),...
  crystalSymmetry('m3m', [3.615 3.615 3.615], 'mineral', 'Copper', 'color', 'light green')};

% plotting convention
setMTEXpref('xAxisDirection','north');
setMTEXpref('zAxisDirection','outOfPlane');

%% Specify File Names

% path to files
pname = 'E:\document\matlab-user\precession';

% which files to be imported
fname = [pname '\Cu250-2.ang'];

%% Import the Data

% create an EBSD variable containing the data
ebsd = loadEBSD(fname,CS,'interface','ACOM');

