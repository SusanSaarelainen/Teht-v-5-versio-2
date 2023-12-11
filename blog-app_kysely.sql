CREATE TABLE IF NOT EXISTS posts (
    id int(11) NOT NULL,
    title VARCHAR(100) NOT NULL,
    body text(200) NOT NULL,
    created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
  ALTER TABLE posts ADD PRIMARY KEY (id);
  ALTER TABLE posts MODIFY id int(11) NOT NULL AUTO_INCREMENT;
  
INSERT INTO posts (id, title, body, created_at) VALUES
  (1, 'Post One', 'This is the body of post one', '2021-05-05'),
  (2, 'Post Two', 'This is the body of post one', '2021-05-10'),
  (3, 'Post Three', 'This is the body of post one', '2021-05-06'),
  (4, 'Post Four', 'This is the body of post one', '2021-06-10'),
  (5, 'Post Five', 'This is the body of post one', '2020-05-05');

CREATE OR REPLACE USER 'susan'@'localhost' IDENTIFIED BY 'kt123456';
GRANT SELECT,INSERT,UPDATE,DELETE ON posts TO 'susan'@'localhost';

SELECT * FROM posts;