var db =  new PouchDB('http://127.0.0.1:5984/users');
console.log("remote pouchDB created - users");

db.info().then((info) => {
    document.getElementById('data').innerHTML = "We have a pouchDB: " + JSON.stringify(info, null, 2);
});



/* Adding a new document (row) */
/*var doc = {
   _id : '02',
   name: 'Nickolas Fury',
   age : 32,
   designation : 'Head of Shield',
   country: 'US'
  };
  db.put(doc);
 */

/********************************************************** 
    You can add documents as shown above.
    When you do the same again for same id,
    console shows a 409 error with conflict message

    There is a _rev field added by pouch to each document entry made
    This revision number needs to be mentioned along manually each time or 
    us promises to retieve the data and within that uopdet the same

    1. Manual update
        doc.age = 4;
        doc._rev = "1-83780dba78e4066cf095eb120f3f3c38";
        db.put(doc);
    2. Fetch and Update via Promises
    
        we will first need to fetch doc from the database, to ensure that we have 
        the correct _rev before we put them back. We don't need to manually assign 
        the _rev value here (like we did above), as it is already in the doc we're fetching.

        and u can see the _rev updated to "3-0d22f898bc7cbea6d21e30f6814d6879"

/********************************************************** */
    // fetch user doc
/*    db.get('01')
        .then(function (doc) {
            // update their age
            doc.age = 40;
            // put them back
            return db.put(doc);
        })
        .then(function () {
            // fetch doc again
            return db.get('01');
        })
        .then(function (doc) {
            console.log(doc);
        });
*/

/* Retrieving the document via _id */  
  db.get('02').then(function (doc) {
    console.log(doc);
  });



/* Data Remove using _id
db.get('01').then(function (doc) {  
    return db.remove(doc);
    });
*/