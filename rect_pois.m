clear all;
close all;
% spatstat: An R Package for Analyzing Spatial Point Patterns
% http://stackoverflow.com/questions/27936167/poisson-point-process-in-matlab
% http://connor-johnson.com/2014/02/25/spatial-point-processes/
% http://www.mathworks.com/matlabcentral/fileexchange/2493-simulation-of-stochastic-processes/content/stproc/poisson2d.m

density = 0.013;
length = 5000;

lambda=density*length;

npoints = poissrnd(lambda)
pproc = rand(1, npoints); % uniform distribution

npoints/length

Data_x = zeros(2, npoints);
Data_y = zeros(2, npoints);
for ii = 1:npoints
Data_x(1,:) = pproc(:);
Data_y(2,:) = pproc(:);
endfor

fid(1) = fopen('1d_data_x.csv','w');
fid(2) = fopen('1d_data_y.csv','w');
for ii = 1:npoints
fprintf(fid(1), '%f, %f,\n', Data_x(1,ii)*length, Data_x(2,ii)*length);
fprintf(fid(2), '%f, %f,\n', Data_y(1,ii)*length, Data_y(2,ii)*length);
endfor
status(1) = fclose(fid(1)); 
status(2) = fclose(fid(2)); 