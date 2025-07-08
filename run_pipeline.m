% run_pipeline.m
% Load and visualize labeled data

% Load ground truth
gTruth = load('gTruth.mat');
gTruth = gTruth.gTruth;

% Display info
disp("GroundTruth Info:");
disp(gTruth);

% Read video
videoFile = gTruth.DataSource.Source;
v = VideoReader(videoFile);

% Get label data
labelData = gTruth.LabelData;

% Display first 5 labeled frames with bounding boxes
disp("Displaying first 5 labeled frames...");
for i = 1:min(5, height(labelData))
    if ~isempty(labelData.Car{i})
        frame = read(v, i);
        imshow(frame); hold on;

        % Draw each box
        for j = 1:numel(labelData.Car{i})
            pos = labelData.Car{i}(j).Position;
            rectangle('Position', pos, 'EdgeColor', 'g', 'LineWidth', 2);
        end

        title(['Frame ', num2str(i)]);
        pause(1); hold off;
    end
end