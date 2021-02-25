function [D, numIntersections, streets, carPaths, points] = hashcodeRead(nameOfFile)

file =  fopen(nameOfFile,'r');


firstLine = fgetl(file);

firstLineData = textscan(firstLine, '%d%d%d%d%d');
D = firstLineData{1};
numIntersections = firstLineData{2};
numStreets = firstLineData{3};
numCars = firstLineData{4};
points = firstLineData{5};

streets = cell(numStreets, 4);

for (i = 1:numStreets)
    line = fgetl(file);
    street = textscan(line, '%d%d%s%d');
    tempCell = cell(1,4);
    
    streets{i,1} = street{1};
    streets{i,2} = street{2};
    streets{i,3} = string(street{3}{1});
    streets{i,4} = street{4};
end

carPaths = {};
for (i = 1:numCars)
     line = fgetl(file);
     streetList = split(string(line)," ");
     carPaths{i,1} = streetList(2:end);
end

end

