CREATE TABLE continent(
  continent_code char(2) PRIMARY KEY NOT NULL,
  continent_name varchar(255) NOT NULL
);

CREATE TABLE country (
  country_id char(22) PRIMARY KEY NOT NULL,
  country_code char(2) NOT NULL UNIQUE,
  continent_code char(2) NOT NULL REFERENCES continent(continent_code)
);

CREATE TABLE country_name (
  country_name text PRIMARY KEY NOT NULL,
  country_id char(22) NOT NULL REFERENCES country(country_id)
);
