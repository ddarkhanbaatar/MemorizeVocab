CREATE KEYSPACE memorize WITH REPLICATION = {'class' : 'NetworkTopologyStrategy','datacenter1' : 2};

USE memorize;

CREATE TABLE Category(
	CategoryID UUID,
	Name text,
	CreateDate timestamp,
	MemberID UUID,
	EasyInterval int,
	PRIMARY KEY (CategoryID)
);

CREATE TABLE Member(
	MemberID UUID,
	FirstName text,
	LastName text,
	Email text,
	Password text,
	PRIMARY KEY (MemberID, Email)
);

CREATE TABLE Vocabulary(
	VocabID UUID,
	CategoryID UUID,
	Vocabulary text,
	Definition text,
	Example text,
	Synonym text,
	WordType text,
	EasyNumber int,
	DifficultNumber int,
	CreatedDate timestamp,
	PRIMARY KEY (VocabID,CategoryID,Vocabulary)
);
//One table should contain at least 3 partitions

//Materialized Views
CREATE MATERIALIZED VIEW category_list AS
SELECT categoryid, createdate, easyinterval,memberid,name 
FROM category
WHERE categoryid is not null and memberid is not null
PRIMARY KEY (categoryid,memberid);



