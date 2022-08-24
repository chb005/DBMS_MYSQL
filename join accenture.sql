create database if not exists accenture
use accenture

___________________________________________________________________________________________
select * from content;

ALTER TABLE content DROP COLUMN URL;

ALTER TABLE content DROP COLUMN Type;

ALTER TABLE content  CHANGE COLUMN MyUnknownColumn sr_no VARCHAR(25);  
____________________________________________________________________________________________________

select * from location;

drop table location
_______________________________________________________________________________________________________

select * from `profile`;

select count(*) as raj from `profile` 

ALTER TABLE `profile`   CHANGE COLUMN MyUnknownColumn sr_no VARCHAR(25);  

_________________________________________________________________________________________

select  * from reactions;

ALTER TABLE `reactions`   CHANGE COLUMN MyUnknownColumn sr_no VARCHAR(25);  

ALTER TABLE reactions DROP COLUMN `Datetime`;

____________________________________________________________________________________________________
select  * from reactiontypes;
ALTER TABLE `reactiontypes`   CHANGE COLUMN MyUnknownColumn sr_no VARCHAR(25);  
____________________________________________________________________________________________________

select  * from session;
ALTER TABLE session CHANGE COLUMN MyUnknownColumn sr_no VARCHAR(25); 
__________________________________________________________________________________________________
select  * from user;
alter table user drop column Email
ALTER TABLE user CHANGE COLUMN MyUnknownColumn sr_no VARCHAR(25);

 ALTER TABLE user MODIFY COLUMN `User ID` varchar(100) 
 
 __________________________________________________________________________________________________

select r.`Content ID`,r.`User ID`,r.`Type`,c.Category from reactions r left join 
content c on r.`Content ID`=c.`Content ID`

CREATE TABLE merge1 select r.`Content ID`,r.`User ID`,r.`Type`,c.Category from reactions r left join 
content c on r.`Content ID`=c.`Content ID`

select * from merge1


show grants for accenture

SELECT * FROM merge1
INTO OUTFILE 'C:/merge12.csv' 
FIELDS ENCLOSED BY '"' 
TERMINATED BY ',' 
ESCAPED BY '"' 
LINES TERMINATED BY '\n';

select count(*) from merge1
select * from merge1
__________________________________________________________________________________________________________
select * from reactiontypes

CREATE TABLE merge2 select m.`Content ID`,m.`User ID`,m.`Type`,m.Category,r.Sentiment,r.Score
from merge1 m left join  reactiontypes r on m.`Type`=r.`Type`

select * from merge2


