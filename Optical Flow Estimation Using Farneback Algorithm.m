%% Optical Flow Estimation Using the Farneback Algorithm
% Load a video. 
 
% Copyright 2015 The MathWorks, Inc.
 
vidReader = VideoReader('umn1.mp4');
%%
% Set up an optical flow object to do the estimate.
opticFlow = opticalFlowFarneback;
%%
% Read in video frames and estimate optical flow of each frame. Display the video frames with flow vectors.
while hasFrame(vidReader)
    frameRGB = readFrame(vidReader);
    frameGray = rgb2gray(frameRGB);
 
    flow = estimateFlow(opticFlow,frameGray); 
 
    imshow(frameRGB) 
    hold on
    plot(flow,'DecimationFactor',[5 5],'ScaleFactor',2)
    hold off 
end
