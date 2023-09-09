% This is a simple example of how to parallelize a for loop
% References: https://www.mathworks.com/help/parallel-computing/parfor.html
clc
clear

start = tic;
for i = 1 : 1000
    for j = 1 : 10000
        for k = 1 : 10000
            % do nothing
        end
    end
end
elapsedTime = toc(start);
fprintf("Elapsed time of implicitly parallel code: %f seconds\n", elapsedTime);

start2 = tic;
parfor i = 1 : 1000
    for j = 1 : 10000
        for k = 1 : 10000
            % do nothing
        end
    end
end
elapsedTime2 = toc(start2);
fprintf("Elapsed time of explicitly parallel code: %f seconds\n", elapsedTime2);
