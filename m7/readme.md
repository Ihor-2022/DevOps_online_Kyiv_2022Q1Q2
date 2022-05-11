 # The progress of the home task 7

    ## Part 1
 ## 1
Downloaded and installed mysql server on the VM shown below

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/001.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/002.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/003.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/004.png)

 ## 2
Now creating three tables which are typical for a simple forum: post (containing posts), comment (containing comments) and tag (containing tags, which are some kind of a keys describing a post). 
On the top of it there will be an auxilary table aux_tag which is used to create many-to-many relationships. 

Database FORUM

create table post (     						    create table comment (     
    id int (11) PRIMARY KEY AUTO_INCREMENT,		        id int (11) PRIMARY KEY AUTO_INCREMENT,
    title varchar (40),    		  				        aux_id int (11) NOT NULL,  
    content varchar (255) NOT NULL,          		    content varchar (255) NOT NULL,                
    status int (11) NOT NULL, 		  			        author varchar (128) NOT NULL,   
    date_created datetime NOT NULL		  		        date_created datetime NOT NULL 
);									                    );


create table tag (     						        create table aux_tag (     
    id int (11) PRIMARY KEY AUTO_INCREMENT,		        id int (11) PRIMARY KEY AUTO_INCREMENT,
    name varchar (128)              		  		    aux_id int (11) NOT NULL,
);				  						                tag_id int (11) NOT NULL
                                                    );

 ## 3
 Now creating a database on the server through the console

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/005.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/006.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/007.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/008.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/009.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/010.png)

  ## 4
Now filling tables

INSERT INTO tag (name) VALUES ('MSQL');
INSERT INTO tag (name) VALUES ('book');
INSERT INTO tag (name) VALUES ('mongo');
INSERT INTO tag (name) VALUES ('RDS');

INSERT INTO post (title, content, status, date_created) VALUES (
   'A Book about MySQL',
   'Pls have a look at the new book "Using MySQL". It gives a lot of useful examples of MySQL use in prod.', 
   2, '2022-05-07 18:49');

INSERT INTO post (title, content, status, date_created) VALUES (
   'Basics with MongoDB - Book',
   'If fact, I needed some resource to start learning MongoDB for one of my web projects. I’ve found it recently.', 
   2, '2022-05-08 18:51');

INSERT INTO post (title, content, status, date_created) VALUES (
   'RDS - Making a Prof database',
   'RDS is solution allowing to make your database professionally, even if you don''t have advanced programming skills.', 
   2, '2022-05-09 13:01');

INSERT INTO aux_tag (aux_id, tag_id) VALUES (1, 1);
INSERT INTO aux_tag (aux_id, tag_id) VALUES (1, 2);
INSERT INTO aux_tag (aux_id, tag_id) VALUES (2, 2);
INSERT INTO aux_tag (aux_id, tag_id) VALUES (2, 3);
INSERT INTO aux_tag (aux_id, tag_id) VALUES (3, 4);

INSERT INTO comment (aux_id, content, author, date_created) VALUES (
    1, 'Good post!', 'Petro Prikhodko', '2022-05-09 20:20');

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/011.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/012.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/013.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/014.png)

 ## 5
Constructing and executing SELECT operator with WHERE, GROUP BY and ORDER BY

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/015.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/016.png)

 ## 6
 Executing other different SQL queries DDL, DML

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/017.png)

And will execute DCL queries on the next step

 ## 7
Creating a database of new users with different privileges. Connecting to the database as a new user and verifying that the privileges allow or deny certain actions, performing DCL commands

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/018.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/019.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/020.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/021.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/022.png)

 ## 8
Making a selection from the main table DB MySQL

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/023.png)

    ## Part 2

 ## 9
Making a backup of the database

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/024.png)

 ## 10
Deleting a table and/or part of the data in a table

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/025.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/026.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/027.png)

 ## 11
 Restoring the database

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/028.png)

Verifying

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/029.png)

 ## 12
Transferring the local database to RDS AWS
For that purpose we create a new RDS instance named forum

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/030.png)

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/031.png)

Now transferring the database from the local to forum at RDS using mysql --host=forum.cvqprgagaakv.eu-central-1.rds.amazonaws.com --port=3306 --user=root --password=SDrtye56GHRT forum < backup_forum.sql

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/032.png)

 ## 13
Now connecting to the RDS database and briefly verifying its integrity

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/033.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/034.png)

 ## 14
Performing SELECT operator with WHERE, GROUP BY and ORDER BY on the RDS instance database

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/035.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/036.png)

 ## 15
Creating the dump of the RDS database into the local machine via mysql --host=forum.cvqprgagaakv.eu-central-1.rds.amazonaws.com --port=3306 --user=root --password=SDrtye56GHRT > dump.sql

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/037.png)

Verifying the dump

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/038.png)

    ## Part 3 - MongoDB

 ## 16
Installing MongoDB and reating a database

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/039.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/040.png)
![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/041.png)

 ## 17 
Creating collections. Use db.createCollection to create a collection. Running show dbs and show collections to view the database and the collections

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/042.png)

 ## 18 
Creating some documents

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/043.png)

 ## 19 
Using find() to list documents out

![This is an image](https://github.com/Ihor-2022/DevOps_online_Kyiv_2022Q1Q2/blob/master/m7/044.png)

Thank you!