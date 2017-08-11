db = db.getSiblingDB('date');
db.collection.find().forEach(function(doc) {
    db.collection.update({ _id: doc._id }, {
        $set: {
            mydate: new Date(doc.mydate.setUTCHours(0, 0, 0, 0))
        }
    });
});
