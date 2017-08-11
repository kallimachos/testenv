db = db.getSiblingDB('date');

for (i = 0; i < 1000; i++) {
    db.history.find({});
}
