use codeup_tests_db;

drop table if exits albums;

CREATE TABLE if not exists albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100) not null,
    name VARCHAR(100) NOT NULL,
    release_date DATE not null,
    sales decimal (6,3) not null,
    genre VARCHAR(100) not null,
    PRIMARY KEY (id)
);
