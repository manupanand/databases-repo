// Select the database
use mydatabase;

// Insert a document into a collection
db.mycollection.insertOne({ name: "John Doe", age: 30, address: "123 Main St" });

// Query the collection
db.mycollection.find().pretty();