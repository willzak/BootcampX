INSERT INTO users (name, email, password)
VALUES 
  ('Haruki Murakami', 'murakami@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('Ocean Vuong', 'o.vuong@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('Melissa Broder', 'sosadtoday@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('Marguerite Duras', 'duras.m@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code)
VALUES 
  (3, 'Cottage Escape', 'A little cottage in the countryside', 'shorturl.at/IOVZ2', 'shorturl.at/IOVZ2', 150, 3, 2, 3, 'United Kingdom', 'country road 3', 'Kendal', 'Cumbria', 'H7F3E2'),
  (1, 'Modern City Home', 'Newly renovated home close to transit and ammentiies', 'shorturl.at/fAIS3', 'shorturl.at/fAIS3', 300, 2, 3, 4, 'Japan', 'Higashi-Gotanda 5', 'Tokyo', 'Tokyo', '523-4344'),
  (2, 'Inner-City Condo', 'Bright and newly built condo in Coal Harbour', 'shorturl.at/eiL34', 'shorturl.at/eiL34', 250, 1, 1, 2, 'Canada', 'Hornby St.', 'Vancouver', 'BC', 'V6F4E3');

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES
  ('20190505', '20190510', 2, 2),
  ('20200105', '20200305', 3, 1),
  ('20190604', '20190614', 1, 4);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES
  (2, 2, 1, 10, 'Lots of great books!'),
  (1, 3, 2, 8, 'Close to great cafes'),
  (4, 1, 3, 4, 'No one in the area spoke French!');