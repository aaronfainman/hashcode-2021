function [outputArg1,outputArg2] = trafficOptimiser(streets, streetList, streetTally, intersectionTally, duration)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

output = [];


for streetIndex = 1:length(streetTally)
    intersectionIndex = streets{streetIndex, 2};
    
    ratio = floor(streetTally(streetIndex)/intersectionTally(intersectionIndex+1)*duration/3);
    output(1) =
    
end

for intersection = 0:length(intersectionTally)-1
    streetIndices = find( [streets{:,2}] == intersection );
    
    for streetIndex = 1:length(streetIndices)
        
    end
    
end

end

