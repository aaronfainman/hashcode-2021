fileName = "a.txt";

[D, numIntersections, streets, carPaths, points] = hashcodeRead(fileName);

[streetList, streetListTally] = tallyStreets(streets, carPaths)

singleIntersections = findSingleIntersections(streets, numIntersections);

[intersections, intersectionTally] = tallyIntersections(streets, streetList, streetListTally, numIntersections);

