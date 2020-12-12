#!/usr/bin/env bash

# Configurations



# Drop DB if exists.
DROP DATABASE IF EXISTS ${MYSQL_DB_NAME}

SELECT user,authentication_string,plugin,host FROM mysql.user;