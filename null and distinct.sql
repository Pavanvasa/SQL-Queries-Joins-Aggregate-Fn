CREATE OR REPLACE TABLE T1 (COL1 number, COL2 number);

INSERT INTO T1 VALUES (1,1);
INSERT INTO T1 VALUES (2,2);
INSERT INTO T1 VALUES (3,3);
INSERT INTO T1 VALUES (4,NULL);
INSERT INTO T1 VALUES (NULL,5);
INSERT INTO T1 VALUES (NULL,NULL);
INSERT INTO T1 VALUES (NULL,NULL);


SELECT * FROM T1; 
--- this returns 7 rows


SELECT DISTINCT COL1, COL2 FROM T1; 
--- this returns 6 rows because the last 2 rows represent one distinct combination


SELECT COUNT(*) FROM (SELECT DISTINCT COL1, COL2 FROM T1);
--- this query is basically same as the previous one, we are running the same query and counting the records.
--- it also returns 6 as value for the COUNT() function.


SELECT COUNT (DISTINCT COL1, COL2) FROM T1;
