SET block_encryption_mode = 'aes-256-cbc';
SET @key_str = UNHEX(SHA2('my secret passphrase', 512));
SET @init_vector = RANDOM_BYTES(16);

INSERT INTO people
  (personID, firstName, lastName, email, comment)
VALUES
  (1, "Amar", "Singh", "my.cool.email@yippee.com", "Scared of most insects."),
  (2, "Stinky", "Guy", "G4RBAGESM3LLSAWES0ME@gmail.com", "A really stinky individual.");
INSERT INTO people
  (personID, firstName, lastName, email)
VALUES
  (3, "John", "Doe", "generic.email@yahoo.com");

INSERT INTO websites
  (websiteID, name, url, comment)
VALUES
  (1, "Roblox", "https://www.roblox.com/", "Powering Imagination"),
  (2, "John's Donuts", "http://www.johnsdonuts.com/", "An anonymous owner sells donuts"),
  (3, "YouTube", "https://www.youtube.com/", "Broadcast yourself"),
  (4, "Wizard101", "https://www.wizard101.com/", "Play The Ultimate Wizard Game Today");

INSERT INTO users
  (personID, websiteID, username, password, timestamp, comment)
VALUES
  (3, 2, "storemanager", AES_ENCRYPT("secretpassword", @key_str, @init_vector), "2004-03-12 00:03:34", "last login: ???"),
  (1, 1, "creeperkiller32", AES_ENCRYPT("thecrazyshirt6796", @key_str, @init_vector), "2012-06-01 10:15:42", "total playtime: 1042 hours"),
  (2, 3, "BattleHero", AES_ENCRYPT("76$efGrach", @key_str, @init_vector), "2020-11-08 13:42:12", "channel hacked once");
