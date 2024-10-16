INSERT INTO people
  (personID, firstName, lastName, email, comment)
VALUES
  (4, "Cassandra", "Felsworth", "cassandra.fels@gmail.com", "Knows fel magic");
INSERT INTO users
  (personID, websiteID, username, password, timestamp, comment)
VALUES
  (4, 4, "FelMaster99", AES_ENCRYPT("magicsrulez43248", @key_str, @init_vector), "2009-02-01 14:33:08", "all stats maxxed");

SELECT CAST(AES_DECRYPT(password, @key_str, @init_vector) AS CHAR) AS "Passwords" FROM users WHERE websiteID = 4;

SELECT CAST(AES_DECRYPT(password, @key_str, @init_vector) AS CHAR) AS "Passwords" FROM users
JOIN websites WHERE (users.websiteID = websites.websiteID) AND url LIKE "https%" LIMIT 2;

UPDATE websites SET url = "https://www.johnsdonuts.com/" WHERE websiteID = 2;

UPDATE users SET password = AES_ENCRYPT("this_is_a_strong_password_for_a_donut_shop_owner", @key_str, @init_vector) WHERE personID = 3;

DELETE FROM websites WHERE url = "https://www.wizard101.com/";

DELETE FROM users WHERE password = AES_ENCRYPT("this_is_a_strong_password_for_a_donut_shop_owner", @key_str, @init_vector);
