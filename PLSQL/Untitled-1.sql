CREATE TABLE franchise
( franchise_id    NUMBER CONSTRAINT pk_franchise PRIMARY KEY
, franchise_name  VARCHAR(20)
, city            VARCHAR(20)
, state           VARCHAR(20))
PARTITION BY LIST(state)
( PARTITION offshore VALUES('Alaska', 'Hawaii')
, PARTITION west VALUES('California', 'Oregon', 'Washington')
, PARTITION desert VALUES ('Arizona','New Mexico')
, PARTITION rockies VALUES ('Colorado', 'Idaho', 'Montana', 'Wyoming')
, ... );