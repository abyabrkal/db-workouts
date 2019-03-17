const PouchDB = require('pouchdb');

const db = new PouchDB('http://127.0.0.1:5984/people');

doc = {
    _id: new Date().toISOString(),
    name: 'Peter',
    age: 23,
    occupation: 'designer',
};

db.put(doc)
    .then(res => {
        console.log('Document inserted OK.');
    }).catch(err => {
        console.error(err);
    });