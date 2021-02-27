function isxnSchedule = findIntersectionSchedules(numIntersections, streets, streetTally, intersectionTally, totalTime)

isxnRoadsIn = cell(numIntersections,1);
for (i = 1:numIntersections)
    isxnRoadsIn{i} = [];
end

for (s = 1:size(streets,1))
    currentStreet = {streets{s,:}};
    isxnRoadsIn{currentStreet{2}+1} = [isxnRoadsIn{currentStreet{2}+1};
                                       currentStreet{3}];
end

isxnSchedule = {};
streetList = [streets{:,3}]';

for (i = 1:length(intersectionTally))
    streetsIn = isxnRoadsIn{i};
    if (intersectionTally(i) > 0)
        isxnSchedule{end+1} = [{i-1}, {0}];
        numStreetsUsed = 0;
        for (x = 1:length(streetsIn))
            name = streetsIn(x);
            streetId = streetList == name;
            time = (streetTally(streetId)/intersectionTally(i))*totalTime;
            time = floor(time);
            if (time > 0)
                isxnSchedule{end} =  [isxnSchedule{end}, {name}, {time}];
                numStreetsUsed = numStreetsUsed + 1;
            end
            isxnSchedule{end}(2) = {numStreetsUsed};
        end
        
    end
end



end

