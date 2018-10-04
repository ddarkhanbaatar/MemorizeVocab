//######################## Insert data into Member ##################

INSERT INTO Member(MemberID,FirstName,LastName,Email,Password)
	VALUES(2cc37550-c63a-11e8-8fb2-516705f4a648,'Darkhanbaatar','Damdin','ddarkhanbaatar@gmail.com','password');
INSERT INTO Member(MemberID,FirstName,LastName,Email,Password)
	VALUES(2cc37550-c63a-11e8-8fb2-516705f4a649,'Gurpreet','Kaur','g.gurpreetkaur@uq.net.au','password');

//######################## Insert data into CategoryType ############
//------------------- for member Darkhanbaatar
INSERT INTO Category(CategoryID,Name,MemberID,CreateDate,EasyInterval) 
	VALUES (2cc41190-c63a-11e8-8fb2-516705f4a648,'IELTS Vocabulary',2cc37550-c63a-11e8-8fb2-516705f4a648,'2018-09-10',5);
INSERT INTO Category(CategoryID,Name,MemberID,CreateDate,EasyInterval) 
	VALUES (2cc41190-c63a-11e8-8fb2-516705f4b648,'Academic Vocabulary',2cc37550-c63a-11e8-8fb2-516705f4a648,'2018-08-10',6);
INSERT INTO Category(CategoryID,Name,MemberID,CreateDate,EasyInterval) 
	VALUES (2cc41190-c63a-11e8-8fb2-516705f4c648,'Everyday Vocabulary',2cc37550-c63a-11e8-8fb2-516705f4a648,'2018-08-17',6);
INSERT INTO Category(CategoryID,Name,MemberID,CreateDate,EasyInterval) 
	VALUES (2cc41190-c63a-11e8-8fb2-516705f4d648,'Cloud Definition',2cc37550-c63a-11e8-8fb2-516705f4a648,'2018-08-13',3);
INSERT INTO Category(CategoryID,Name,MemberID,CreateDate,EasyInterval) 
	VALUES (2cc41190-c63a-11e8-8fb2-516705f4e648,'Data Mining words',2cc37550-c63a-11e8-8fb2-516705f4a648,'2018-08-20',2);
INSERT INTO Category(CategoryID,Name,MemberID,CreateDate,EasyInterval) 
	VALUES (2cc41190-c63a-11e8-8fb2-516705f4f648,'Key workds',2cc37550-c63a-11e8-8fb2-516705f4a648,'2018-09-14',3);
INSERT INTO Category(CategoryID,Name,MemberID,CreateDate,EasyInterval) 
	VALUES (2cc41190-c63a-11e8-8fb2-516705f4a658,'Parts of a car',2cc37550-c63a-11e8-8fb2-516705f4a648,'2018-09-14',3);
	

//------------------- for member Gurpreet
INSERT INTO Category(CategoryID,Name,MemberID,CreateDate,EasyInterval) 
	VALUES (2cc41190-c63a-11e8-8fb2-516705f4a647,'IELTS Vocabulary',2cc37550-c63a-11e8-8fb2-516705f4a648,'2018-09-16',5);
INSERT INTO Category(CategoryID,Name,MemberID,CreateDate,EasyInterval) 
	VALUES (2cc41190-c63a-11e8-8fb2-516705f4b647,'Academic Vocabulary',2cc37550-c63a-11e8-8fb2-516705f4a648,'2018-07-10',2);
INSERT INTO Category(CategoryID,Name,MemberID,CreateDate,EasyInterval) 
	VALUES (2cc41190-c63a-11e8-8fb2-516705f4c647,'Everyday Vocabulary',2cc37550-c63a-11e8-8fb2-516705f4a648,'2018-10-17',6);

//######################## Insert data into Vocabulary ############
INSERT INTO Vocabulary(VocabID,CategoryID,Vocabulary,Definition,Example,Synonym,WordType,EasyNumber,DifficultNumber,CreatedDate)
	VALUES (now(),2cc41190-c63a-11e8-8fb2-516705f4a648,'refinement','improvement','The new model has a number of refinements',
			'improvement, change','Noun',2,1,dateof(now()));

INSERT INTO Vocabulary(VocabID,CategoryID,Vocabulary,Definition,Example,Synonym,WordType,EasyNumber,DifficultNumber,CreatedDate)
	VALUES (now(),2cc41190-c63a-11e8-8fb2-516705f4a648,'grandeur','impressive beauty, power, or size',
			'It is foreign domesticity and local grandeur.','greatness','Noun',0,0,dateof(now()));
			
INSERT INTO Vocabulary(VocabID,CategoryID,Vocabulary,Definition,Example,Synonym,WordType,EasyNumber,DifficultNumber,CreatedDate)
	VALUES (now(),2cc41190-c63a-11e8-8fb2-516705f4a648,'civilization','human society, its organization and culture',
			'modern American civilization','civilized','Noun',2,3,dateof(now()));
			
INSERT INTO Vocabulary(VocabID,CategoryID,Vocabulary,Definition,Example,Synonym,WordType,EasyNumber,DifficultNumber,CreatedDate)
	VALUES (now(),2cc41190-c63a-11e8-8fb2-516705f4a648,'industrious','Hardworking',
			'Most of the students I knew at college were serious and industrious.','hard-working','Adj',0,0,dateof(now()));

INSERT INTO Vocabulary(VocabID,CategoryID,Vocabulary,Definition,Example,Synonym,WordType,EasyNumber,DifficultNumber,CreatedDate)
	VALUES (now(),2cc41190-c63a-11e8-8fb2-516705f4a648,'adequately','well enough',
			'I didnt have adequate time to prepare.','sufficiently','Adv',0,0,dateof(now()));
			
INSERT INTO Vocabulary(VocabID,CategoryID,Vocabulary,Definition,Example,Synonym,WordType,EasyNumber,DifficultNumber,CreatedDate)
	VALUES (now(),2cc41190-c63a-11e8-8fb2-516705f4a648,'inexplicably','without explanation; unable to be explained or understood',
			'Inexplicably, the men were never questioned about where the explosives came from.','incomprehensible, strange','Adv',0,0,dateof(now()));

INSERT INTO Vocabulary(VocabID,CategoryID,Vocabulary,Definition,Example,Synonym,WordType,EasyNumber,DifficultNumber,CreatedDate)
	VALUES (now(),2cc41190-c63a-11e8-8fb2-516705f4a648,'dire','very serious or extreme; very bad',
			'These people are in dire need of help','very serious, extreme, very bad','Adj',0,0,dateof(now()));
			
INSERT INTO Vocabulary(VocabID,CategoryID,Vocabulary,Definition,Example,Synonym,WordType,EasyNumber,DifficultNumber,CreatedDate)
	VALUES (now(),2cc41190-c63a-11e8-8fb2-516705f4a648,'triumph','to succeed; win',
			'Iverson had come home and triumphed.','win','Verb',0,0,dateof(now()));
			
INSERT INTO Vocabulary(VocabID,CategoryID,Vocabulary,Definition,Example,Synonym,WordType,EasyNumber,DifficultNumber,CreatedDate)
	VALUES (now(),2cc41190-c63a-11e8-8fb2-516705f4a648,'hone','to sharpen, improve',
			'The bone had been honed to a point.','sharpen','Verb',0,0,dateof(now()));
			