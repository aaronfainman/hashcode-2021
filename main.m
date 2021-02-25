fileName = "f.txt";

[D, numIntersections, streets, carPaths, points] = hashcodeRead(fileName);

[streetList, streetListTally] = tallyStreets(streets, carPaths)

outData = findSingleIntersections(streets, numIntersections);

fileOut = "f_out.txt";

outputData(fileOut, outData);
