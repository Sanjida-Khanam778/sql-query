Select * from person;

INSERT INTO person (id, user_name, age) VALUES (1, 'John Doe', 30);

ALTER TABLE person
ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

ALTER Table person
 DROP COLUMN email;

ALTER Table person
RENAME COLUMN age to user_age;

ALTER Table person
 alter COLUMN user_name type VARCHAR(25)

ALTER Table person
 alter COLUMN user_name set NOT NULL

ALTER Table person
 alter COLUMN user_name DROP NOT NULL