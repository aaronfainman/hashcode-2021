fileName = "d.txt";

[D, numIntersections, streets, carPaths, points] = hashcodeRead(fileName);

outData = findSingleIntersections(streets, numIntersections);

fileOut = "d_out.txt";

outputData(fileOut, outData);
