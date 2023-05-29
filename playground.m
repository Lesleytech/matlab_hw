% Example matrix
matrix = [1 0 1;
          0 1 0;
          1 1 0];

% Create figure and axis
figure;
axis off;

% Set cell size
cellSize = 50;

% Iterate over matrix elements
for i = 1:size(matrix, 1)
    for j = 1:size(matrix, 2)
        % Calculate cell position
        xPos = (j - 1) * cellSize;
        yPos = (size(matrix, 1) - i) * cellSize;

        % Set cell color
        if matrix(i, j) == 1
            cellColor = 'b';  % Blue
        else
            cellColor = 'w';  % White
        end

        % Draw cell rectangle
        rectangle('Position', [xPos, yPos, cellSize, cellSize], 'FaceColor', cellColor);
    end
end

