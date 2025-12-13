USE EDW;
GO


SELECT
	TermKey
FROM
	lookup.Term;


CREATE TABLE #TermKeyList
(
	TermKey		INT NOT NULL
);


INSERT INTO #TermKeyList (TermKey) VALUES (1);
INSERT INTO #TermKeyList (TermKey) VALUES (2);
INSERT INTO #TermKeyList (TermKey) VALUES (3);


INSERT INTO
	#TermKeyList
(
	TermKey
)
SELECT
	TermKey
FROM
	lookup.Term;


DROP TABLE #TermKeyList;


CREATE TABLE #TermKeyList
(
	TermKey		INT NOT NULL
)
WITH (DISTRIBUTION = ROUND_ROBIN);


INSERT INTO
	#TermKeyList
(
	TermKey
)
SELECT
	TermKey
FROM
	lookup.Term;

DROP TABLE #TermKeyList;

