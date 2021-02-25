mockStreets = [{0, 1, "str1", 1}; {1, 2, "str2", 1}; {2, 0, "str3", 1}; {2, 3, "str4", 1}; {3, 1, "str5",1}];

mockCars = {["str1", "str2"]; ["str2", "str3", "str1"]; ["str5", "str2", "str4"]};

%%


testOut = findSingleIntersections(mockStreets, 4);
