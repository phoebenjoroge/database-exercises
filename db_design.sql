use codeup_test_db;

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       email VARCHAR(45) NOT NULL,
                       password VARCHAR(20) NOT NULL,
                       PRIMARY KEY (id)
);
CREATE TABLE ads (
                     id  INT UNSIGNED NOT NULL AUTO_INCREMENT,
                     title  VARCHAR(50)  NOT NULL,
                     description VARCHAR(255) NOT NULL,
                     user_id     INT  UNSIGNED    NOT NULL,
                     PRIMARY KEY (id),
                     FOREIGN KEY (user_id) REFERENCES users (id)
);


 CREATE TABLE categories (
        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
        name  VARCHAR(100) NOT NULL,
        PRIMARY KEY (id)
);


create table ad_categories(
            ad_id INTEGER UNSIGNED NOT NULL,
            cat_id INTEGER UNSIGNED NOT NULL,
            FOREIGN KEY (ad_id) REFERENCES ads(id),
            FOREIGN KEY (cat_id) REFERENCES categories(id)
);


DROP TABLE ad_categories;
/*INSERT */

INSERT INTO users(email, password) VALUES
('ted@anemail.com', 123456),
('phoebe@anemail.com', 789101),
('dan@anemail.com', 112131);

SELECT * FROM users;

INSERT INTO ads(title, description, user_id) VALUES
('Couch for sale', 'Buy this couch please!', 1),
('Chess Club', 'Come play chess with us! It takes two to tango.', 3),
('Study hall', 'Let''s ace this test togther', 2),
('Roommate wanted', 'Make sure you have manners', 3),
('Kite flying', 'Wheather is nice this weekend', 1);

SELECT * FROM ads;

INSERT INTO categories(name) VALUES
('For Sale'),
('Club'),
('Academic'),
('Personal'),
('Free'),
('Recreational'),
('Services'),
('For rent'),
('Urgent');


SELECT * FROM categories;
SELECT * FROM ads;

INSERT INTO ad_categories(ad_id, cat_id)
VALUES (1, 2), (1, 3), (2, 4), (3, 1),
       (3, 2), (3, 3), (3, 4), (4, 2), (5, 1);

SELECT * FROM ad_categories;

SELECT u.email
FROM users as u
         JOIN ads as a
WHERE a.id = '2';

SELECT u.email, a.user_id, a.title
FROM users as u
join ads as a
on u.id = a.user_id;

SELECT a.id as'add id', a.title, a.description, c.id as 'category id', c.name
FROM ads as a
join categories as c
     ON a.id = c.id
join ad_categories as ac
on ac.cat_id = c.id
where a.id =1;

SELECT a.id as'add id', a.title, a.description, c.id as 'category id', c.name
FROM categories AS c
         JOIN ad_categories AS ac
              ON ac.cat_id = c.id
         JOIN ads as a
              ON a.id = ac.ad_id
WHERE ac.ad_id = '1';

select * from ad_categories;

select  c.id, c.name, a.title
from categories as c
         JOIN ads as a
              ON a.id = c.id;

