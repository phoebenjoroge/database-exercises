use codeup_test_db;

drop table user_info;

CREATE TABLE user_info (
                    id  INT UNSIGNED NOT NULL AUTO_INCREMENT,
                    profile_pic LONGBLOB NOT NULL,
                    about VARCHAR(255) NOT NULL,
                    user_id   INT  UNSIGNED    NOT NULL,
                    PRIMARY KEY (id),
                    FOREIGN KEY (user_id) REFERENCES users (id)
);

INSERT INTO users(email, password) VALUES
('ted@anemail.com', 123456),
('phoebe@anemail.com', 789101),
('dan@anemail.com', 112131);


INSERT INTO user_info(id, profile_pic, about, user_id) VALUES
(1, 'C:/Users/artemis/Desktop/IMG_3712.JPG', 'this is a trial', 3);

describe user_info;