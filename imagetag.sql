
DROP TABLE IF EXISTS addtag;
CREATE TABLE addtag (
  userid varchar(100) NOT NULL,
  imageid varchar(100) NOT NULL,
  message varchar(100) NOT NULL
);

INSERT INTO addtag VALUES ('prabeen123', 'WYH4B', 'flower with beautiness');
INSERT INTO addtag VALUES ('prabeen123', '75A3F', 'pussy cat');


DROP TABLE IF EXISTS admin;
CREATE TABLE admin (
  adminid varchar(100) PRIMARY  KEY NOT NULL,
  adminpwd varchar(100) NOT NULL
) ;
INSERT INTO admin VALUES ('admin', 'admin');


DROP TABLE IF EXISTS image;
CREATE TABLE image (
  imageid varchar(100) PRIMARY KEY NOT NULL,
  name varchar(100) NOT NULL,
  type varchar(100) NOT NULL,
  category varchar(100) NOT NULL,
  description varchar(100) NOT NULL,
  color varchar(100) NOT NULL,
  charecterstic varchar(100) NOT NULL,
  image LONGBLOB NOT NULL,
  rank int(100) NOT NULL,
  getimage varchar(100) NOT NULL,	
); 

INSERT INTO image VALUES ('4398Y', 'Swaraswati mata', 'God & Goddess', 'Goddess', 'mata with gitar', 'white greess', 'vinapani bidhya puja', '', '13','');
INSERT INTO image VALUES ('WYH4B', 'Beautiful Flower', 'Nature', 'Flower', 'Most Beautiful Thing ', 'green with yellow', 'Showing happiness', '', '1','');


DROP TABLE IF EXISTS userdetails;
CREATE TABLE userdetails (
  userid varchar(100) PRIMARY KEY NOT NULL,
  fname varchar(100) NOT NULL,
  lname varchar(100) NOT NULL,
  userpwd varchar(100) NOT NULL,
  email varchar(100) NOT NULL,
  dob varchar(100) NOT NULL,
  gender varchar(100) NOT NULL,
  address varchar(100) NOT NULL,
  mobile varchar(100) NOT NULL,
  status varchar(100) NOT NULL,
  profilepic LONGBLOB NOT NULL,
  getprofilepic  varchar(100) NOT NULL,

) ;

INSERT INTO userdetails VALUES ('poorna', 'chandra', 'rao', 'poorna@gmail.com', 'p', '2013-09-30', 'male', 'hyd', '8886320593', 'active', '','');







--SqlServer 

create database rankedmodel;
use rankedmodel;




CREATE TABLE addtag (
  userid varchar(100) NOT NULL,
  imageid varchar(100) NOT NULL,
  message varchar(100) NOT NULL
);

INSERT INTO addtag VALUES ('prabeen123', 'WYH4B', 'flower with beautiness');
INSERT INTO addtag VALUES ('prabeen123', '75A3F', 'pussy cat');


CREATE TABLE admin (
  adminid varchar(100) PRIMARY  KEY NOT NULL,
  adminpwd varchar(100) NOT NULL
) ;
INSERT INTO admin VALUES ('admin', 'admin');



CREATE TABLE image (
  imageid varchar(100) PRIMARY KEY NOT NULL,
  name varchar(100) NOT NULL,
  type varchar(100) NOT NULL,
  category varchar(100) NOT NULL,
  description varchar(100) NOT NULL,
  color varchar(100) NOT NULL,
  charecterstic varchar(100) NOT NULL,
  image image NOT NULL,
  rank int NOT NULL,
  getimage varchar(100) NOT NULL,	
); 

INSERT INTO image VALUES ('4398Y', 'Swaraswati mata', 'God & Goddess', 'Goddess', 'mata with gitar', 'white greess', 'vinapani bidhya puja', '', '13','');
INSERT INTO image VALUES ('WYH4B', 'Beautiful Flower', 'Nature', 'Flower', 'Most Beautiful Thing ', 'green with yellow', 'Showing happiness', '', '1','');


CREATE TABLE userdetails (
  userid varchar(100) PRIMARY KEY NOT NULL,
  fname varchar(100) NOT NULL,
  lname varchar(100) NOT NULL,
  userpwd varchar(100) NOT NULL,
  email varchar(100) NOT NULL,
  dob varchar(100) NOT NULL,
  gender varchar(100) NOT NULL,
  address varchar(100) NOT NULL,
  mobile varchar(100) NOT NULL,
  status varchar(100) NOT NULL,
  profilepic image NOT NULL,
  getprofilepic  varchar(100) NOT NULL,

) ;

INSERT INTO userdetails VALUES ('poorna', 'chandra', 'rao', 'poorna@gmail.com', 'p', '2013-09-30', 'male', 'hyd', '8886320593', 'active', '','');









