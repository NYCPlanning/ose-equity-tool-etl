Combine data from puma (sort by puma), then boro (sort by boro), then citywide into one csv, or one csv for each vintage
Do whatever you need to do to create 2 files, one containing all of the old vintages, one with all of the new vintages.  The column headers should be the same for each one, replacing the date with the string "change".
Convert those two csvs to json (https://data.page/csv/json)
Insert those json objects in the script as dataSetOld and dataSetNew
Make sure the "labels" array is up to date with all of the base variable names (generally the ones ending in "_count", "_rate", "_median")
Run "node convert-whateverfile.js"
Take the json file it output and convert it to csv (https://data.page/json/csv)
Go to the bottom of the csv, re-add the boro and citywide