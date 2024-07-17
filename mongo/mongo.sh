#MongoDB uses JavaScript for its query language, 
#so you can write your MongoDB commands in a .js file.
#MONGO SHELL
mongo >
load("path/to/script.js");
or 
mongo path/to/script.js
#import json file

mongoimport --db mydatabase --collection mycollection --file /path/to/data.json --jsonArray