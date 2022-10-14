% list all available webcams (required: Webcam Support Package)
camList = webcamlist;
% example output:
% ans =
%   2 x 1 cell array
%   {’Integrated Camera           ’}
%   {’Microsoft LifeCam Studio(TM)’}
% use 1 to connect to the ’Integrated camera’
cam = webcam(1);
% use ’Microsoft LifeCam Studio(TM)’ to connect to the Microsoft camera by name
%cam = webcam('Microsoft LifeCam Studio(TM)');
% open webcam preview
preview(cam)
% capture one webcam frame
img = snapshot(cam);
% show image
image(img)
% capture and show multiple frames
for idx = 1:5
  img = snapshot(cam);
  image(img);
end
% access camera settings (e.g resolution)
cam.AvailableResolutions % show all available camera resolutions
% change camera settings (e.g resolution)
cam.Resolution = '1280x720';
% close connection to webcam
clear cam