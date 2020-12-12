LOAD DATA LOCAL INFILE 'dynamic/forum_0_0.csv' INTO TABLE forum FIELDS TERMINATED BY '|' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'dynamic/forum_hasMember_person_0_0.csv' INTO TABLE forum_person FIELDS TERMINATED BY '|' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'dynamic/forum_hasTag_tag_0_0.csv' INTO TABLE forum_tag FIELDS TERMINATED BY '|' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'static/organisation_0_0.csv' INTO TABLE organisation FIELDS TERMINATED BY '|' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'dynamic/person_0_0.csv' INTO TABLE person FIELDS TERMINATED BY '|' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'dynamic/person_email_emailaddress_0_0.csv' INTO TABLE person_email FIELDS TERMINATED BY '|' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'dynamic/person_hasInterest_tag_0_0.csv' INTO TABLE person_tag FIELDS TERMINATED BY '|' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'dynamic/person_knows_person_0_0.csv' INTO TABLE knows FIELDS TERMINATED BY '|' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'dynamic/person_knows_person_0_0.csv' INTO TABLE knows FIELDS TERMINATED BY '|' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'dynamic/person_likes_post_0_0.csv' INTO TABLE likes FIELDS TERMINATED BY '|' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'dynamic/person_likes_comment_0_0.csv' INTO TABLE likes FIELDS TERMINATED BY '|' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'dynamic/person_speaks_language_0_0.csv' INTO TABLE person_language FIELDS TERMINATED BY '|' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'dynamic/person_studyAt_organisation_0_0.csv' INTO TABLE person_university FIELDS TERMINATED BY '|' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'dynamic/person_workAt_organisation_0_0.csv' INTO TABLE person_company FIELDS TERMINATED BY '|' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'static/place_0_0.csv' INTO TABLE place FIELDS TERMINATED BY '|' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'dynamic/post_hasTag_tag_0_0.csv' INTO TABLE message_tag FIELDS TERMINATED BY '|' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'dynamic/comment_hasTag_tag_0_0.csv' INTO TABLE message_tag FIELDS TERMINATED BY '|' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'static/tagclass_0_0.csv' INTO TABLE tagclass FIELDS TERMINATED BY '|' IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'static/tag_0_0.csv' INTO TABLE tag FIELDS TERMINATED BY '|' IGNORE 1 LINES;