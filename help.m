%% Question 5
arr = cell(4,3);
arr{1,2} = "Matlab Course";
arr{1,3} = "ENGI";
arr{2,1} = 316;
arr{2,3} = [3,27;2,23];
arr{3,1} = "Assignment";
arr{4,1} = 21;
arr{4,2} = [-10;-5;0;5];

cellplot(arr);
