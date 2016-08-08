# Schema Information

## books
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null
description | text      | not null
author_id   | integer   | not null, foreign key (references authors), indexed

## bookshelf
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (references users), indexed
title       | string    | not null

## reviews
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (references users), indexed
book_id     | string    | not null, foreign key (references books), indexed
date        | datetime  | not null
rating      | integer   | not null


## shelves (join table)
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
book_id     | integer   | not null, foreign key (references books), indexed, unique [book_id, shelf_id]
shelf_id    | integer   | not null, foreign key (references bookshelf), indexed

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
username        | string    | not null, indexed, unique
password_digest | string    | not null
session_token   | string    | not null, indexed, unique

## authors
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
fname           | string    | not null, indexed
lname           | string    | not null, indexed
description     | string    | not null

## tags
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
name        | string    | not null

## tagging
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
book_id     | integer   | not null, foreign key (references books), indexed, unique [tag_id]
tag_id      | integer   | not null, foreign key (references tag), indexed
