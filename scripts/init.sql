CREATE TABLE IF NOT EXISTS bands (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255),
  description TEXT,
  image TEXT,
  page_fbid VARCHAR(255),
  PRIMARY KEY(id)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS venues (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255),
  latitude FLOAT,
  longitude FLOAT,
  PRIMARY KEY(id)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS bills (
  id INT NOT NULL AUTO_INCREMENT,
  venue_id INT NOT NULL,
  date DATETIME NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS performances (
  id INT NOT NULL AUTO_INCREMENT,
  venue_id INT NOT NULL,
  band_id INT NOT NULL,
  start_time DATETIME NOT NULL,
  headliner TINYINT NOT NULL DEFAULT 0,
  PRIMARY KEY(id)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS attendees (
  id INT NOT NULL AUTO_INCREMENT,
  venue_id INT NOT NULL,
  checked_in DATETIME,
  name VARCHAR(255),
  fbid VARCHAR(255),
  token VARCHAR(255),
  PRIMARY KEY(id)
) ENGINE=InnoDB;

