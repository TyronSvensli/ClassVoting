DROP DATABASE IF EXISTS `2IM_voting`;
CREATE DATABASE `2IM_voting`;
USE `2IM_voting`;

CREATE TABLE 2IM_elever (
  elev_token INT NOT NULL,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  klasse VARCHAR(10),
  voted_id INT,
  PRIMARY KEY (elev_token)
);

CREATE TABLE 2IM_kandidater (
  voting_id INT NOT NULL,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  klasse VARCHAR(10),
  votes INT,
  PRIMARY KEY (voting_id)
);

INSERT INTO 2IM_elever (elev_token, first_name, last_name, klasse, voted_id)
VALUES
(7817415565574, 'Arthur', 'Glenn Larson', '2IMITST', NULL),
(1412659267623, 'Sam', 'James Rowan Daniels', '2IMIT', NULL),
(2810112329630, 'Isaac', 'Nathaniel Blakeford Brown', '2IMIT', NULL),
(4662540647082, 'Melissa', 'Jane Bradshaw', '2IMIT', NULL),
(1799561700471, 'Julian', 'Grant Webster', '2IMITST', NULL),
(7080642058753, 'Brady', 'Thomas Holloway', '2IMIT', NULL),
(7342232825106, 'Matthew', 'Neilson', '2IMITST', NULL),
(5513305132534, 'Aaron', 'Oscar Scott Emory', '2IMITST', NULL),
(0932989254261, 'Tom', 'Parker Newman', '2IMITST', NULL),
(3738787450886, 'Shawn', 'Adam Whitaker', '2IMITST', NULL),
(0532447171342, 'Amy', 'Jaden Anderson', '2IMITST', NULL),
(6718703729596, 'Martin', 'Kyle Trent', '2IMIT', NULL),
(4068296628999, 'Jonathan', 'Allen Richards', '2IMITST', NULL),
(8866146748594, 'Alice', 'Lynn Robertson', '2IMITST', NULL),
(8279848158761, 'Oscar', 'Alan Abbot', '2IMITST', NULL),
(3064173784256, 'Tyler', 'Reid Samson', '2IMIT', NULL),
(0003747817500, 'Jacob', 'Robinson', '2IMIT', NULL),
(9205822905269, 'David', 'John Sorensen', '2IMITST', NULL),
(9230159768832, 'Eleanor', 'Ashton', '2IMIT', NULL),
(4206634988484, 'Nathan', 'Williams', '2IMITST', NULL),
(1634058959030, 'Simon', 'Curtis Spencer', '2IMIT', NULL),
(2030122933934, 'Spencer', 'Gregson', '2IMIT', NULL),
(0036618419296, 'Karen', 'Margaret Simmons', '2IMITST', NULL),
(0828865718856, 'Nicholas', 'Bartley', '2IMIT', NULL),
(4941337636581, 'Andrew', 'Pearson', '2IMITST', NULL),
(3737075918253, 'Alden', 'Lucas Harris', '2IMITST', NULL),
(7318778964752, 'Brian', 'Keller', '2IMIT', NULL),
(4947488366737, 'Harrison', 'Lloyd', '2IMITST', NULL),
(8251177827859, 'Michael', 'Alan Peterson', '2IMIT', NULL),
(3411271900774, 'Clark', 'Morgan', '2IMIT', NULL),
(6472158343592, 'Stanley', 'Everett Bradley', '2IMITST', NULL),
(6367906138370, 'Archer', 'Ames', '2IMIT', NULL),
(4911959262215, 'Elliot', 'Charles Carter', '2IMIT', NULL),
(7070349934504, 'Jesse', 'Howard Vaughn', '2IMITST', NULL),
(1924750944000, 'Mason', 'Underhill', '2IMIT', NULL),
(5932354445318, 'Daniel', 'Scott Hampton', '2IMITST', NULL),
(4552850334972, 'Noah', 'Taylor', '2IMIT', NULL),
(1878403658906, 'Kyle', 'Landon', '2IMITST', NULL),
(4827358880079, 'Nicholas', 'Layton', '2IMITST', NULL)
(9082061587022, 'Tara', 'Kingsley', '2IMMPST', NULL),
(6673250478953, 'Lena', 'Morrison', '2IMMP', NULL),
(4267627901902, 'Victoria', 'Amber Prescott', '2IMMPST', NULL),
(5351872472684, 'Gavin', 'Windsor', '2IMMPST', NULL),
(7689436736666, 'Mateo', 'Sebastian Lopez', '2IMMPST', NULL),
(1985753221348, 'Ivy', 'Neal-Patterson', '2IMMPST', NULL),
(1280094510737, 'Chase', 'Donovan Stark', '2IMMPST', NULL),
(0233445015726, 'Olivia', 'Hawthorne', '2IMMP', NULL),
(4580433532608, 'Travis', 'Sinclair', '2IMMP', NULL),
(8526908672194, 'Rashid', 'Aliyev', '2IMMP', NULL),
(4891651826230, 'Declan', 'Thornton', '2IMMP', NULL),
(7109830954970, 'Keaton', 'Bell', '2IMMP', NULL),
(8143799813605, 'Rajesh', 'Patel', '2IMMP', NULL),
(5671258926619, 'Mohamed', 'El-Amin', '2IMMPST', NULL),
(2799232925383, 'Dylan', 'Reese', '2IMMP', NULL),
(6889928003115, 'Brendan', 'Huxley', '2IMMP', NULL),
(4389740422097, 'Javier', 'Delgado Cruz', '2IMMPST', NULL),
(9136050865137, 'Maxwell', 'Riggs', '2IMMPST', NULL),
(4751590029040, 'Corbin', 'Drake', '2IMMPST', NULL),
(2519331747852, 'Bianca', 'Lovelace', '2IMMPST', NULL),
(1634362770235, 'Everett', 'Kingsman', '2IMMPST', NULL),
(1752730763331, 'Ashton', 'Holloway', '2IMMP', NULL),
(8795014268206, 'Logan', 'Sutherland', '2IMMP', NULL),
(2056829363918, 'Naomi', 'Delgado-Hart', '2IMMP', NULL),
(5898226716650, 'Caleb', 'Porter', '2IMMP', NULL),
(9014407729572, 'Gregory', 'Larson', '2IMMP', NULL),
(2464761139338, 'Ollie', 'McAllister', '2IMMP', NULL);

INSERT INTO 2IM_kandidater (voting_id, first_name, last_name, klasse, votes)
VALUES
(1, 'Eleanor', 'Ashton', '2IMIT', 0),
(2, 'Sam', 'James Rowan Daniels', '2IMIT', 0),
(3, 'Matthew', 'Neilson', '2IMITST', 0),
(4, 'Oscar', 'Alan Abbot', '2IMITST', 0),
(5, 'Logan', 'Sutherland', '2IMMP', 0),
(6, 'Caleb', 'Porter', '2IMMP', 0),
(7, 'Javier', 'Delgado Cruz', '2IMMPST', 0),
(8, 'Tara', 'Kingsley', '2IMMPST', 0);