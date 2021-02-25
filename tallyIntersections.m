function [intersection, interTally] = tallyIntersections(streets, streetNames, carTally, numIntersections)

intersections = zeros(1,numIntersections);
interTally = zeros(1,numIntersections);
    
for carIndex = 1:length(streetNames)-1
    %find streetname in input data
    row = find( [streets{:,3}] == streetNames[carIndex]);
    currentIntersection = streets{row,2};
    interTally[currentIntersection+1] =  interTally[currentIntersection+1]+carTally[carIndex]; 
end

end