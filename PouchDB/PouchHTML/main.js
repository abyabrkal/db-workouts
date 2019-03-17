var db =  new PouchDB('sample');
console.log("pouchDB -sample- created");

db.info().then((info) => {
    document.getElementById('data').innerHTML = "We have a pouchDB: " + JSON.stringify(info, null, 2);
});

var doc = {
    "_id": "mittens",
    "name": "Mittens",
    "occupation": "kitten",
    "age": 3,
    "hobbies": [
      "playing with balls of yarn",
      "chasing laser pointers",
      "lookin' hella cute"
    ]
  };
  db.put(doc);

  db.get('mittens').then(function (doc) {
    console.log(doc);
  });