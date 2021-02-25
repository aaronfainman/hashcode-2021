function [streetList, streetListTally] = tallyStreets(streets, carPaths)
streetList = [streets{:,3}]';
streetListTally = zeros(size(streetList));
for (i =street 1:size(carPaths,1))
    path = carPaths{i};
    for (j = 1:size(path,1))
        index = find(streetList == path(j));
        streetListTally(index) = streetListTally(index)+1;
    end
end
end

