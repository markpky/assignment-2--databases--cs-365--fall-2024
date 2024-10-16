INSERT INTO people
  (personID, firstName, lastName, email, comment)
VALUES
  (4, "Cassandra", "Felsworth", "cassandra.fels@gmail.com", "Knows fel magic");
INSERT INTO users
  (personID, websiteID, username, password, timestamp, comment)
VALUES
  (4, 4, "FelMaster99", AES_ENCRYPT("magicsrulez43248", @key_str, @init_vector), "2009-02-01 14:33:08", "all stats maxxed");
