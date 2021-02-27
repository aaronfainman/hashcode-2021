clearvars;
files = ["d"];
for (letter = files)
    fileName = letter + ".txt";
    
    [D, numIntersections, streets, carPaths, points] = hashcodeRead(fileName);
    
    [streetList, streetListTally] = tallyStreets(streets, carPaths);
    
    interTally = tallyIntersections(streets, streetList, streetListTally, numIntersections);
    
    isxnSchedule = findIntersectionSchedules(numIntersections, streets, streetListTally, interTally, D);
    
    fileOut = letter + "d_out2.txt";
    
    outputData(fileOut, isxnSchedule);
end