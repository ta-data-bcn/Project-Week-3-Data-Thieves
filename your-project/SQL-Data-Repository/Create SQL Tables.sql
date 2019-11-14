use project3;

drop table video_table;
CREATE TABLE video_table (
vid_id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Channel VARCHAR(90) NOT NULL,
Video_id VARCHAR(90) NOT NULL,
Published VARCHAR(15), 
Duration INT,
last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
select * from video_table;



drop table content_creator;
CREATE TABLE content_creator (
creator_id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
rank VARCHAR(4) NOT NULL,
Channel VARCHAR(90) NOT NULL  ,
last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
select * from content_creator;




-- Newest Table
drop table video_table;
CREATE TABLE video_table (
vid_id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Channel VARCHAR(90) NOT NULL,
Video_id VARCHAR(90) NOT NULL,
Published VARCHAR(15), 
Duration INT,
last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
select * from video_table;