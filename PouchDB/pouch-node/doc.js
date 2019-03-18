const PouchDB = require('pouchdb');

const db = new PouchDB('http://127.0.0.1:5984/people');

/*
doc = {
    _id: new Date().toISOString(),
    name: 'Peter',
    age: 23,
    occupation: 'designer',
};
*/

doc1 = {_id: new Date().toISOString(), name: 'Tony', age: 42, occupation: 'Hero' };
doc2 = {_id: new Date().toISOString(), name: 'Steve', age: 172, occupation: 'Captain' };
doc3 = {_id: new Date().toISOString(), name: 'Thor', age: 542, occupation: 'King' };
doc = [doc1, doc2, doc3];

db.bulkDocs(doc)
    .then(res => {
        console.log('Document inserted OK.');
    }).catch(err => {
        console.error(err);
    });