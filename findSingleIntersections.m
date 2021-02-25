function output = findSingleIntersections(streetData, numIntersections)
%Output array in exact formay [{intersectionID; 1; streetName, 1}]
output = [{}];
for intersectionID = 0:(numIntersections-1)
    if sum([streetData{:,2}] == intersectionID ) == 1
        row = find( [streetData{:,2}] == intersectionID);
        output{end+1} = { streetData{row,2}, 1, streetData{row,3}, 1};
    end
    
end




end

