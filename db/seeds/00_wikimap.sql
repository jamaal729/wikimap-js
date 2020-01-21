-- \c midterm;

-- Users
INSERT INTO users
  (id, username, password)
VALUES
  (DEFAULT, 'aaronjames', 'password');
INSERT INTO users
  (id, username, password)
VALUES
  (DEFAULT, 'alexwalker', 'password');
INSERT INTO users
  (id, username, password)
VALUES
  (DEFAULT, 'baileywhite', 'password');
INSERT INTO users
  (id, username, password)
VALUES
  (DEFAULT, 'tylerriley', 'password');
INSERT INTO users
  (id, username, password)
VALUES
  (DEFAULT, 'judecook', 'password');
INSERT INTO users
  (id, username, password)
VALUES
  (DEFAULT, 'brycenspence', 'password');
INSERT INTO users
  (id, username, password)
VALUES
  (DEFAULT, 'tyreemoses', 'password');
INSERT INTO users
  (id, username, password)
VALUES
  (DEFAULT, 'michaellaughlin', 'password');
INSERT INTO users
  (id, username, password)
VALUES
  (DEFAULT, 'roccomorgan', 'password');
INSERT INTO users
  (id, username, password)
VALUES
  (DEFAULT, 'tristandouglas', 'password');
-- Maps
INSERT INTO maps
  (id, title, description, longitude, latitude, location, owner_id)
VALUES
  (DEFAULT, 'Dining', 'Best Places to Eat Around Town', 51.0443, -114.0631, point (51.0443, -114.0631), 1);
INSERT INTO maps
  (id, title, description, longitude, latitude, location, owner_id)
VALUES
  (DEFAULT, 'Movie locations ', 'Locations of Movie being shot here', 51.0443, -114.0631, point (51.0443, -114.0631), 2);
INSERT INTO maps
  (id, title, description, longitude, latitude, location, owner_id)
VALUES
  (DEFAULT, 'Tourist Attractions', 'Tourist Attractions', 51.0443, -114.0631, point (51.0443, -114.0631), 3);
INSERT INTO maps
  (id, title, description, longitude, latitude, location, owner_id)
VALUES
  (DEFAULT, 'Calgary Tower', 'Its calgary trademark and visitors attraction', 51.0443, -114.0631, point(51.0443, -114.0631), 1);
INSERT INTO maps
  (id,title, description, longitude, latitude, location, owner_id)
VALUES
  (DEFAULT, 'Calgary Zoo', 'Kids just adore the penguins and pandas', 51.0459, -114.0237, point(51.0459, -114.0237), 2);
INSERT INTO maps
  (id, title, description, longitude, latitude, location, owner_id)
VALUES
  (DEFAULT, 'Calgary library', 'Time to get serious, read something nice', 51.046494, -114.057732, point(51.046494, -114.057732), 3);
INSERT INTO maps
  (id, title, description, longitude, latitude, location, owner_id)
VALUES
  (DEFAULT, 'Calgary museum', 'Its the famous firefighter museum of calgary', 51.0186, -114.0359, point(51.0186, -114.0359), 3);
INSERT INTO maps
  (id, title, description, longitude, latitude, location, owner_id)
VALUES
  (DEFAULT, 'Calgary National Park', 'A place to spend time with your family', 51.0443, -114.0631, point (51.0443, -114.0631), 3);
-- Markers
INSERT INTO markers
  (id, title, description, image_url, longitude, latitude, location, owner_id, map_id)
VALUES
  (DEFAULT, 'The Calgary Zoo', 'Kids just adore the penguins and pandas', 'http://www.google.com', 51.0459, -114.0237, point (51.0459, -114.0237), 3, 1);
INSERT INTO markers
  (id, title, description, image_url, longitude, latitude, location, owner_id, map_id)
VALUES
  (DEFAULT, 'Calgary Tower', 'Its calgary trademark and visitors attraction', 'http://www.google.com', 51.0443, -114.0631, point(51.0443, -114.0631), 3, 1);
INSERT INTO markers
  (id, title, description, image_url, longitude, latitude, location, owner_id, map_id)
VALUES
  (DEFAULT, 'Calgary Library', 'Time to get serious, read something nice', 'http://www.google.com', 51.046494, -114.057732, point(51.046494, -114.057732), 2, 1);
INSERT INTO markers
  (id, title, description, image_url, longitude, latitude, location, owner_id, map_id)
VALUES
  (DEFAULT, 'Calgary Museum', 'Its the famous firefighter museum of calgary', 'http://www.google.com', 51.0186, -114.0359, point(51.0186, -114.0359), 2, 1);
INSERT INTO markers
  (id, title, description, image_url, longitude, latitude, location, owner_id, map_id)
VALUES
  (DEFAULT, 'Calgary National Park', 'A place to spend time with your family', 'http://www.google.com', 51.0443, -114.0631, point(51.0443, -114.0631), 2, 1);
INSERT INTO markers
  (id, title, description, image_url, longitude, latitude, location, owner_id, map_id)
VALUES
  (DEFAULT, 'Alloy', 'Alloy Restaurant', 'http://www.google.com', 51.136160, -113.967040, point(51.136160, -113.967040), 2, 2);
INSERT INTO markers
  (id, title, description, image_url, longitude, latitude, location, owner_id, map_id)
VALUES
  (DEFAULT, 'Anju', 'Anju Restaurant', 'http://www.google.com', 51.047310, -114.057970, point(51.047310, -114.057970), 2, 2);
INSERT INTO markers
  (id, title, description, image_url, longitude, latitude, location, owner_id, map_id)
VALUES
  (DEFAULT, 'Blink', 'Blink Restaurant & Bar', 'http://www.google.com', 50.921570, -114.089260, point(50.921570, -114.089260), 2, 2);
INSERT INTO markers
  (id, title, description, image_url, longitude, latitude, location, owner_id, map_id)
VALUES
  (DEFAULT, 'Canyon', 'Canyon Meadows Cinemas', 'http://www.google.com', 50.931230, -114.068370, point(50.931230, -114.068370), 2, 3);
INSERT INTO markers
  (id, title, description, image_url, longitude, latitude, location, owner_id, map_id)
VALUES
  (DEFAULT, 'Joyland', 'Joyland Theatre', 'http://www.google.com', 51.047310, -114.057968, point(51.047310, -114.057968), 2, 3);
INSERT INTO markers
  (id, title, description, image_url, longitude, latitude, location, owner_id, map_id)
VALUES
  (DEFAULT, 'Scotiabank Chinook', 'Scotiabank Chinook', 'http://www.google.com', 51.051790, -114.317570, point(51.051790, -114.317570), 2, 3);
INSERT INTO markers
  (id, title, description, image_url, longitude, latitude, location, owner_id, map_id)
VALUES
  (DEFAULT, 'SilverCity', 'SilverCity Cross Iron Mills', 'http://www.google.com', 51.202076, -113.990765, point(51.202076, -113.990765), 2, 3);
-- Favorites
INSERT INTO favorites
  (id, user_id, map_id)
VALUES
  (DEFAULT, 1, 1);
INSERT INTO favorites
  (id, user_id, map_id)
VALUES
  (DEFAULT, 2, 2);
INSERT INTO favorites
  (id, user_id, map_id)
VALUES
  (DEFAULT, 3, 3);
INSERT INTO favorites
  (id, user_id, map_id)
VALUES
  (DEFAULT, 1, 5);
INSERT INTO favorites
  (id, user_id, map_id)
VALUES
  (DEFAULT, 2, 6);
INSERT INTO favorites
  (id, user_id, map_id)
VALUES
  (DEFAULT, 4, 3);
INSERT INTO favorites
  (id, user_id, map_id)
VALUES
  (DEFAULT, 4, 6);
INSERT INTO favorites
  (id, user_id, map_id)
VALUES
  (DEFAULT, 1, 3);
-- Contributions
INSERT INTO contributions
  (id, user_id, map_id)
VALUES
  (DEFAULT, 1, 1);
INSERT INTO contributions
  (id, user_id, map_id)
VALUES
  (DEFAULT, 2, 2);
INSERT INTO contributions
  (id, user_id, map_id)
VALUES
  (DEFAULT, 3, 3);
INSERT INTO contributions
  (id, user_id, map_id)
VALUES
  (DEFAULT, 4, 3);
INSERT INTO contributions
  (id, user_id, map_id)
VALUES
  (DEFAULT, 4, 6);
INSERT INTO contributions
  (id, user_id, map_id)
VALUES
  (DEFAULT, 1, 3);
INSERT INTO contributions
  (id, user_id, map_id)
VALUES
  (DEFAULT, 2, 6);
INSERT INTO contributions
  (id, user_id, map_id)
VALUES
  (DEFAULT, 1, 6);
