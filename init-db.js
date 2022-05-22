db = db.getSiblingDB("meteo");

db.meteo.drop();

db.createUser({user: "root", pwd: "pass", roles: ["readWrite","dbAdmin"]})
