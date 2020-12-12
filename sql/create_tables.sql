CREATE TABLE forum (
   f_forumid BIGINT NOT NULL,
   f_title VARCHAR(256) NOT NULL,
   f_creationdate TIMESTAMP NOT NULL
);

CREATE TABLE forum_person (
   fp_forumid BIGINT NOT NULL,
   fp_personid BIGINT NOT NULL,
   fp_creationdate TIMESTAMP NOT NULL
);

CREATE TABLE forum_tag (
   ft_forumid BIGINT NOT NULL,
   ft_tagid BIGINT NOT NULL
);

CREATE TABLE organisation (
   o_organisationid BIGINT NOT NULL,
   o_type VARCHAR(256) NOT NULL,
   o_name VARCHAR(256) NOT NULL,
   o_url VARCHAR(256) NOT NULL
);

CREATE TABLE person (
   p_personid BIGINT NOT NULL,
   p_firstname VARCHAR(256) NOT NULL,
   p_lastname VARCHAR(256) NOT NULL,
   p_gender VARCHAR(256) NOT NULL,
   p_birthday DATE NOT NULL,
   p_creationdate TIMESTAMP NOT NULL,
   p_locationip VARCHAR(256) NOT NULL,
   p_browserused VARCHAR(256) NOT NULL
);

CREATE TABLE person_email (
   pe_personid BIGINT NOT NULL,
   pe_email VARCHAR(256) NOT NULL
);

CREATE TABLE person_tag (
   pt_personid BIGINT NOT NULL,
   pt_tagid BIGINT NOT NULL
);

CREATE TABLE knows (
   k_person1id BIGINT NOT NULL,
   k_person2id BIGINT NOT NULL,
   k_creationdate TIMESTAMP NOT NULL
);

CREATE TABLE likes (
   l_personid BIGINT NOT NULL,
   l_messageid BIGINT NOT NULL,
   l_creationdate TIMESTAMP NOT NULL
);

CREATE TABLE person_language (
   plang_personid BIGINT NOT NULL,
   plang_language VARCHAR(256) NOT NULL
);

CREATE TABLE person_university (
   pu_personid BIGINT NOT NULL,
   pu_organisationid BIGINT NOT NULL,
   pu_classyear INT NOT NULL
);

CREATE TABLE person_company (
   pc_personid BIGINT NOT NULL,
   pc_organisationid BIGINT NOT NULL,
   pc_workfrom INT NOT NULL
);

CREATE TABLE place (
   pl_placeid BIGINT NOT NULL,
   pl_name VARCHAR(256) NOT NULL,
   pl_url VARCHAR(256) NOT NULL,
   pl_type VARCHAR(256) NOT NULL
);

CREATE TABLE message_tag (
   mt_messageid BIGINT NOT NULL,
   mt_tagid BIGINT NOT NULL
);

CREATE TABLE tagclass (
   tc_tagclassid BIGINT NOT NULL,
   tc_name VARCHAR(256) NOT NULL,
   tc_url VARCHAR(256) NOT NULL
);

CREATE TABLE tag (
   t_tagid BIGINT NOT NULL,
   t_name VARCHAR(256) NOT NULL,
   t_url VARCHAR(256) NOT NULL
);