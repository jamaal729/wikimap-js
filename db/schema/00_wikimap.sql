'\ c midterm;'
DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS maps CASCADE;
DROP TABLE IF EXISTS markers CASCADE;
DROP TABLE IF EXISTS favorites CASCADE;
DROP TABLE IF EXISTS contributions CASCADE;

--
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username varchar(255) UNIQUE NOT NULL,
  password varchar(255) NOT NULL
);

CREATE TABLE maps (
  id SERIAL PRIMARY KEY,
  title varchar(255),
  description text,
  longitude double precision NOT NULL,
  latitude double precision NOT NULL,
  location point NOT NULL,
  owner_id int REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE markers (
  id SERIAL PRIMARY KEY,
  title varchar(255),
  description text,
  image_url text,
  longitude double precision NOT NULL,
  latitude double precision NOT NULL,
  location point NOT NULL,
  owner_id int REFERENCES users(id) ON DELETE CASCADE,
  map_id int REFERENCES maps(id) ON DELETE CASCADE
);

CREATE TABLE favorites (
  id SERIAL PRIMARY KEY,
  user_id int REFERENCES users(id) ON DELETE CASCADE,
  map_id int REFERENCES maps(id) ON DELETE CASCADE
);

CREATE TABLE contributions (
  id SERIAL PRIMARY KEY,
  user_id int REFERENCES users(id) ON DELETE CASCADE,
  map_id int REFERENCES maps(id) ON DELETE CASCADE
);

--
--
-- https://tapoueh.org/blog/2018/05/postgresql-data-types-point/
-- https://stackoverflow.com/questions/41494211/insert-point-into-postgres-database
-- CREATE TEMP TABLE x(p point) ;
-- INSERT INTO x VALUES ('(1,2)');
-- INSERT INTO x VALUES (point(3, 4));
-- SELECT * FROM x ;
