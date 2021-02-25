function outputData(fileName, dataList)
numIntersections = length(dataList);

file = fopen(fileName, 'w');

fprintf(file, '%d\n',numIntersections);

for i = 1:numIntersections
    isxn = dataList{i};
    
    fprintf(file, '%d\n',isxn{1});
    fprintf(file, '%d\n',isxn{2});
    
    for (j = 3:2:length(isxn))
        fprintf(file, '%s ',isxn{j});
        fprintf(file, '%d\n',isxn{j+1});
    end
end

fclose(file);
end

