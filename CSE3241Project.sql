DROP TABLE IF EXISTS "ALBUM";
CREATE TABLE ALBUM (
Album_ID CHAR(10) NOT NULL,
Artist_ID CHAR(10) NOT NULL,
Album_Name VARCHAR(30) NOT NULL,
Album_year CHAR(4),
Genre VARCHAR(15),
Total_Copies INT,
PRIMARY KEY(Album_ID),
FOREIGN KEY(Artist_ID) REFERENCES ARTIST(Artist_ID)
	ON DELETE SET NULL  ON UPDATE CASCADE);
INSERT INTO "ALBUM" VALUES('0000000001','0000000001','LAST WINTER','2014','RAP',5);
INSERT INTO "ALBUM" VALUES('0000000002','0000000002','ABBEY ROAD','1970','CLASSIC ROCK',10);
INSERT INTO "ALBUM" VALUES('0000000003','0000000003','ATTACK & RELEASE','2010','ALTERNATIVE ROCK',3);
INSERT INTO "ALBUM" VALUES('0000000004','0000000004','DEADROSES','2016','RAP',2);
INSERT INTO "ALBUM" VALUES('0000000005','0000000005','CALIFORNIA','2015','ROCK',8);
INSERT INTO "ALBUM" VALUES('0000000006','0000000006','COLORING BOOK','2015','RAP',12);
INSERT INTO "ALBUM" VALUES('0000000007','0000000007','MORNING VIEW','2003','ROCK',4);
INSERT INTO "ALBUM" VALUES('0000000008','0000000008','CILVIA DEMO','2012','RAP',2);
INSERT INTO "ALBUM" VALUES('0000000009','0000000009','GRADUATION','2008','RAP',16);
INSERT INTO "ALBUM" VALUES('0000000010','0000000010','BABEL','2011','FOLK ROCK',7);
INSERT INTO "ALBUM" VALUES('0000000011','0000000011','TRILOGY','2006','R&B',9);
INSERT INTO "ALBUM" VALUES('0000000012','0000000012','GOODFORYOU','2017','RAP',3);
INSERT INTO "ALBUM" VALUES('0000000013','0000000013','VHS 2.0','2015','ALTERNATIVE ROCK',2);
INSERT INTO "ALBUM" VALUES('0000000014','0000000014','MELOPHOBIA','2006','ALTERNATIVE ROCK',3);
INSERT INTO "ALBUM" VALUES('0000000015','0000000015','EAGLES','1976','CLASSIC ROCK',13);
INSERT INTO "ALBUM" VALUES('0000000016','0000000016','WALLS','2017','ALTERNATIVE ROCK',4);
INSERT INTO "ALBUM" VALUES('0000000017','0000000017','SECTION.80','2006','RAP',9);
INSERT INTO "ALBUM" VALUES('0000000018','0000000018','BORN SINNER','2010','RAP',23);
INSERT INTO "ALBUM" VALUES('0000000019','0000000019','AMERICAN TEEN','2016','R&B',1);
INSERT INTO "ALBUM" VALUES('0000000020','0000000020','YEEZUS','2016','RAP',10);
DROP TABLE IF EXISTS "ARTIST";
CREATE TABLE ARTIST (
Artist_ID CHAR(10) NOT NULL,
Bio VARCHAR(250),
Artist_Name VARCHAR(30) NOT NULL,
PRIMARY KEY(Artist_ID));
INSERT INTO "ARTIST" VALUES('0000000001','GREAT MUSIC','BAS');
INSERT INTO "ARTIST" VALUES('0000000002','BEST BAND OF ALL TIME','THE BEATLES');
INSERT INTO "ARTIST" VALUES('0000000003','FROM AKRON, OH','THE BLACK KEYS');
INSERT INTO "ARTIST" VALUES('0000000004','MAKES SOME GOOD SONGS','BLACKBEAR');
INSERT INTO "ARTIST" VALUES('0000000005','HUGE ROCK BAND FROM THE 90S','BLINK-182');
INSERT INTO "ARTIST" VALUES('0000000006','BORN AND RAISED IN CHICAGO','CHANCE THE RAPPER');
INSERT INTO "ARTIST" VALUES('0000000007','A FAVORITE ROCK BAND FROM THE 90S','INCUBUS');
INSERT INTO "ARTIST" VALUES('0000000008','BORN AND RAISED IN TENNESSEE','ISAIAH RASHAD');
INSERT INTO "ARTIST" VALUES('0000000009','FROM CHICAGO','KANYE WEST');
INSERT INTO "ARTIST" VALUES('0000000010','ENGLISH BAND','MUMFORD & SONS');
INSERT INTO "ARTIST" VALUES('0000000011','HAS A GREAT VOICE','THE WEEKND');
INSERT INTO "ARTIST" VALUES('0000000012','BORN IN PORTLAND','AMINE');
INSERT INTO "ARTIST" VALUES('0000000013','FUN BAND TO SEE LIVE','XAMBASSADORS');
INSERT INTO "ARTIST" VALUES('0000000014','ENGLISH BAND','CAGE THE ELEPHANT');
INSERT INTO "ARTIST" VALUES('0000000015','GREAT ROCK BAND FROM THE 70S','EAGLES');
INSERT INTO "ARTIST" VALUES('0000000016','ALL OF THEM ARE RELATED','KINGS OF LEON');
INSERT INTO "ARTIST" VALUES('0000000017','POPULAR RAPPER FROM COMPTON','KENDRICK LAMAR');
INSERT INTO "ARTIST" VALUES('0000000018','FROM NORTH CAROLINA','J. COLE');
INSERT INTO "ARTIST" VALUES('0000000019','YOUNG R&B SINGER','KHALID');
INSERT INTO "ARTIST" VALUES('0000000020','FROM CHICAGO','KANYE WEST');
DROP TABLE IF EXISTS "CHECKS_OUT";
CREATE TABLE CHECKS_OUT(
Library_Card_No CHAR(10) NOT NULL, 
Album_ID CHAR(10) NOT NULL,
Date DATE,
FOREIGN KEY(Library_Card_No) REFERENCES USER(Library_Card_No)
	ON DELETE SET NULL  ON UPDATE CASCADE,
FOREIGN KEY(Album_ID) REFERENCES ALBUM(Album_ID)
	ON DELETE SET NULL  ON UPDATE CASCADE,
PRIMARY KEY(Library_Card_No, Album_ID));
INSERT INTO "CHECKS_OUT" VALUES('0000000001','0000000003',1997);
INSERT INTO "CHECKS_OUT" VALUES('0000000002','0000000005',1998);
INSERT INTO "CHECKS_OUT" VALUES('0000000003','0000000007',1992);
INSERT INTO "CHECKS_OUT" VALUES('0000000004','0000000009',2005);
INSERT INTO "CHECKS_OUT" VALUES('0000000005','0000000002',2004);
INSERT INTO "CHECKS_OUT" VALUES('0000000006','0000000011',2001);
INSERT INTO "CHECKS_OUT" VALUES('0000000007','0000000017',1985);
INSERT INTO "CHECKS_OUT" VALUES('0000000008','0000000010',1984);
INSERT INTO "CHECKS_OUT" VALUES('0000000009','0000000012',2004);
INSERT INTO "CHECKS_OUT" VALUES('0000000010','0000000013',1998);
INSERT INTO "CHECKS_OUT" VALUES('0000000011','0000000010',1997);
INSERT INTO "CHECKS_OUT" VALUES('0000000012','0000000005',1998);
INSERT INTO "CHECKS_OUT" VALUES('0000000013','0000000017',2000);
INSERT INTO "CHECKS_OUT" VALUES('0000000014','0000000012',1993);
INSERT INTO "CHECKS_OUT" VALUES('0000000015','0000000010',1998);
INSERT INTO "CHECKS_OUT" VALUES('0000000016','0000000003',1998);
INSERT INTO "CHECKS_OUT" VALUES('0000000017','0000000001',1984);
INSERT INTO "CHECKS_OUT" VALUES('0000000018','0000000005',1998);
INSERT INTO "CHECKS_OUT" VALUES('0000000019','0000000012',1991);
INSERT INTO "CHECKS_OUT" VALUES('0000000020','0000000017',1998);
DROP TABLE IF EXISTS "IN_MOVIE";
CREATE TABLE IN_MOVIE (
Track_ID CHAR(10) NOT NULL,
Movie_ID CHAR(10) NOT NULL,
FOREIGN KEY(Track_ID) REFERENCES TRACK(Track_ID)
	ON DELETE SET NULL  ON UPDATE CASCADE,
FOREIGN KEY(Movie_ID) REFERENCES MOVIE(Movie_ID)
	ON DELETE SET NULL  ON UPDATE CASCADE,
PRIMARY KEY(Track_ID, Movie_ID));
INSERT INTO "IN_MOVIE" VALUES('0000000001','0000000001');
INSERT INTO "IN_MOVIE" VALUES('0000000002','0000000002');
INSERT INTO "IN_MOVIE" VALUES('0000000003','0000000003');
INSERT INTO "IN_MOVIE" VALUES('0000000004','0000000004');
INSERT INTO "IN_MOVIE" VALUES('0000000005','0000000005');
INSERT INTO "IN_MOVIE" VALUES('0000000006','0000000006');
INSERT INTO "IN_MOVIE" VALUES('0000000007','0000000007');
INSERT INTO "IN_MOVIE" VALUES('0000000008','0000000008');
INSERT INTO "IN_MOVIE" VALUES('0000000009','0000000009');
INSERT INTO "IN_MOVIE" VALUES('0000000010','0000000010');
INSERT INTO "IN_MOVIE" VALUES('0000000011','0000000011');
INSERT INTO "IN_MOVIE" VALUES('0000000012','0000000012');
INSERT INTO "IN_MOVIE" VALUES('0000000013','0000000013');
INSERT INTO "IN_MOVIE" VALUES('0000000014','0000000014');
INSERT INTO "IN_MOVIE" VALUES('0000000015','0000000015');
INSERT INTO "IN_MOVIE" VALUES('0000000016','0000000016');
INSERT INTO "IN_MOVIE" VALUES('0000000017','0000000017');
INSERT INTO "IN_MOVIE" VALUES('0000000018','0000000018');
INSERT INTO "IN_MOVIE" VALUES('0000000019','0000000019');
INSERT INTO "IN_MOVIE" VALUES('0000000020','0000000020');
DROP TABLE IF EXISTS "MOVIE";
CREATE TABLE MOVIE (
Movie_ID CHAR(10) NOT NULL,
Movie_Name VARCHAR(15) NOT NULL,
PRIMARY KEY(Movie_ID));
INSERT INTO "MOVIE" VALUES('0000000001','SCOTT PILGRIM');
INSERT INTO "MOVIE" VALUES('0000000002','THE GODFATHER');
INSERT INTO "MOVIE" VALUES('0000000003','PSYCHO');
INSERT INTO "MOVIE" VALUES('0000000004','THE DARK KNIGHT');
INSERT INTO "MOVIE" VALUES('0000000005','12 ANGRY MEN');
INSERT INTO "MOVIE" VALUES('0000000006','SCHINDLERS LIST');
INSERT INTO "MOVIE" VALUES('0000000007','PULP FICTION');
INSERT INTO "MOVIE" VALUES('0000000008','LOTR ROK');
INSERT INTO "MOVIE" VALUES('0000000009','INTERSTELLAR');
INSERT INTO "MOVIE" VALUES('0000000010','FIGHT CLUB');
INSERT INTO "MOVIE" VALUES('0000000011','LOTR FELLOWSHIP');
INSERT INTO "MOVIE" VALUES('0000000012','FORREST GUMP');
INSERT INTO "MOVIE" VALUES('0000000013','STAR WARS V');
INSERT INTO "MOVIE" VALUES('0000000014','INCEPTION');
INSERT INTO "MOVIE" VALUES('0000000015','LOTR TT');
INSERT INTO "MOVIE" VALUES('0000000016','CITY OF GOD');
INSERT INTO "MOVIE" VALUES('0000000017','GOODFELLAS');
INSERT INTO "MOVIE" VALUES('0000000018','THE MATRIX');
INSERT INTO "MOVIE" VALUES('0000000019','SEVEN SAMURAI');
INSERT INTO "MOVIE" VALUES('0000000020','STAR WARS IV');
DROP TABLE IF EXISTS "MUSIC_VIDEO";
CREATE TABLE MUSIC_VIDEO (
MV_ID CHAR(10) NOT NULL,
Track_ID CHAR(10) NOT NULL,
MV_Length INT NOT NULL,
MV_Producer VARCHAR(20) NOT NULL,
PRIMARY KEY(MV_ID),
FOREIGN KEY(Track_ID) REFERENCES TRACK(Track_ID)
	ON DELETE SET NULL  ON UPDATE CASCADE);
INSERT INTO "MUSIC_VIDEO" VALUES('0000000001','0000000020',180,'Bannanna Chip');
INSERT INTO "MUSIC_VIDEO" VALUES('0000000002','0000000019',170,'The women');
INSERT INTO "MUSIC_VIDEO" VALUES('0000000003','0000000018',160,'Missus Missus');
INSERT INTO "MUSIC_VIDEO" VALUES('0000000004','0000000017',155,'Mister Mister');
INSERT INTO "MUSIC_VIDEO" VALUES('0000000005','0000000016',165,'You Know Who ');
INSERT INTO "MUSIC_VIDEO" VALUES('0000000006','0000000015',195,'Peyton Manning');
INSERT INTO "MUSIC_VIDEO" VALUES('0000000007','0000000014',180,'Tim Tee Bow');
INSERT INTO "MUSIC_VIDEO" VALUES('0000000008','0000000013',200,'Shrimpy Fram');
INSERT INTO "MUSIC_VIDEO" VALUES('0000000009','0000000012',205,'The one and O');
INSERT INTO "MUSIC_VIDEO" VALUES('0000000010','0000000011',200,'Jim');
INSERT INTO "MUSIC_VIDEO" VALUES('0000000011','0000000010',198,'Leon Madrid');
INSERT INTO "MUSIC_VIDEO" VALUES('0000000012','0000000009',192,'Rachel P');
INSERT INTO "MUSIC_VIDEO" VALUES('0000000013','0000000008',172,'Damn Danny Diesel');
INSERT INTO "MUSIC_VIDEO" VALUES('0000000014','0000000007',169,'A-Alex Birch');
INSERT INTO "MUSIC_VIDEO" VALUES('0000000015','0000000006',163,'Jimmmayyy Olsen');
INSERT INTO "MUSIC_VIDEO" VALUES('0000000016','0000000005',225,'Leon Madrid');
INSERT INTO "MUSIC_VIDEO" VALUES('0000000017','0000000004',230,'Leon Madrid');
INSERT INTO "MUSIC_VIDEO" VALUES('0000000018','0000000003',235,'Happy Go Lucky');
INSERT INTO "MUSIC_VIDEO" VALUES('0000000019','0000000002',195,'Janice Jackson');
INSERT INTO "MUSIC_VIDEO" VALUES('0000000020','0000000001',187,'Jim Bobby');
DROP TABLE IF EXISTS "TRACK";
CREATE TABLE TRACK (
Track_ID CHAR(10) NOT NULL,
Album_ID CHAR(10) NOT NULL,
Track_Length INT NOT NULL,
Track_Name VARCHAR(15) NOT NULL,
PRIMARY KEY(Track_ID),
FOREIGN KEY(Album_ID) REFERENCES ALBUM(Album_ID)
	ON DELETE SET NULL  ON UPDATE CASCADE);
INSERT INTO "TRACK" VALUES('0000000001','0000000001',230,'NWO');
INSERT INTO "TRACK" VALUES('0000000002','0000000001',220,'Mook in NM');
INSERT INTO "TRACK" VALUES('0000000003','0000000001',225,'Fiji Water In..');
INSERT INTO "TRACK" VALUES('0000000004','0000000001',210,'Charles de Gualle');
INSERT INTO "TRACK" VALUES('0000000005','0000000001',230,'Vacation');
INSERT INTO "TRACK" VALUES('0000000006','0000000002',230,'Come Together');
INSERT INTO "TRACK" VALUES('0000000007','0000000002',220,'Something');
INSERT INTO "TRACK" VALUES('0000000008','0000000002',225,'Oh! Darling');
INSERT INTO "TRACK" VALUES('0000000009','0000000002',210,'Octopuss Garden');
INSERT INTO "TRACK" VALUES('0000000010','0000000002',230,'Because');
INSERT INTO "TRACK" VALUES('0000000011','0000000003',230,'All You Ever...');
INSERT INTO "TRACK" VALUES('0000000012','0000000003',220,'I got mine');
INSERT INTO "TRACK" VALUES('0000000013','0000000003',225,'Strange Times');
INSERT INTO "TRACK" VALUES('0000000014','0000000003',210,'Psychotic Girl');
INSERT INTO "TRACK" VALUES('0000000015','0000000003',230,'Lies');
INSERT INTO "TRACK" VALUES('0000000016','0000000004',230,'4U');
INSERT INTO "TRACK" VALUES('0000000017','0000000004',220,'I needed you');
INSERT INTO "TRACK" VALUES('0000000018','0000000004',225,'Aint trippin');
INSERT INTO "TRACK" VALUES('0000000019','0000000004',210,'90210');
INSERT INTO "TRACK" VALUES('0000000020','0000000004',230,'Aint love');
DROP TABLE IF EXISTS "USER";
CREATE TABLE USER (
Library_Card_No CHAR(10) NOT NULL,
First_name VARCHAR(15) NOT NULL,
Last_name VARCHAR(15) NOT NULL, 
Email  VARCHAR(30) NOT NULL,
Address VARCHAR(30),
Phone CHAR(10),
PRIMARY KEY(Library_Card_No));
INSERT INTO "USER" VALUES('0000000001','HAN','SOLO','HANSOLO@GMAIL.COM','1 STAR WARS WAY','123-456-7890');
INSERT INTO "USER" VALUES('0000000002','LUKE','SKYWALKER','LUKESKYWALKER@GMAIL.COM','2 STAR WARS WAY','123-456-7891');
INSERT INTO "USER" VALUES('0000000003','HARRY','POTTER','HARRYPOTTER@GMAIL.COM','1 HOGWARTS AVE','234-567-8901');
INSERT INTO "USER" VALUES('0000000004','RON','WEASLEY','RONWEASLEY@GMAIL.COM','2 HOGWARTS AVE','345-678-9012');
INSERT INTO "USER" VALUES('0000000005','DARTH','VADER','IAMYOURFATHER@GMAIL.COM','2 STAR WARS WAY','456-789-0123');
INSERT INTO "USER" VALUES('0000000006','TARZAN','JUNGLE','ROPESWINGER@GMAIL.COM','1 COCONUT RD','567-890-1234');
INSERT INTO "USER" VALUES('0000000007','CAPTAIN','OBVIOUS','THESKYISBLUE@GMAIL.COM','1 OBVIOUS AVE','678-901-2345');
INSERT INTO "USER" VALUES('0000000008','ROGER','RABBIT','WHOFRAMEDME@GMAIL.COM','1 CARTOON DR','789-012-3456');
INSERT INTO "USER" VALUES('0000000009','BRUCE','WAYNE','IMNOTBATMAN@GMAIL.COM','1 GOTHAM RD','890-123-4567');
INSERT INTO "USER" VALUES('0000000010','CLARK','KENT','DAILYPLANETREPORTER@GMAIL.COM','1 METROPOLIS BLVD','901-234-5678');
INSERT INTO "USER" VALUES('0000000011','PETER','PARKER','RIPUNCLEBEN@GMAIL.COM','1 SPIDEY ST','012-345-6789');
INSERT INTO "USER" VALUES('0000000012','SHERLOCK','HOLMES','ITSELEMENTARY@GMAIL.COM','1 MYSTERY RD','034-348-7823');
INSERT INTO "USER" VALUES('0000000013','BARNEY','STINSON','LEGENWAITFORIT@GMAIL.COM','1 DARY RD','982-923-8468');
INSERT INTO "USER" VALUES('0000000014','TED','MOSBY','HIMYM@GMAIL.COM','1 MANHATTAN DR','843-512-9609');
INSERT INTO "USER" VALUES('0000000015','MARSHALL','ERICKSON','LAWYERED@GMAIL.COM','2 MANHATTAN DR','398-618-8574');
INSERT INTO "USER" VALUES('0000000016','JOHN','WATSON','SCOTLANDYARD@GMAIL.COM','2 MYSTERY DR','938-189-8346');
INSERT INTO "USER" VALUES('0000000017','RONALD','MCDONALD','MCDONALDS@GMAIL.COM','1 BIG MAC DR','327-733-2379');
INSERT INTO "USER" VALUES('0000000018','CHRISTOPHER','NOLAN','MOVIEMAKER@GMAIL.COM','1 INCEPTION RD','321-923-0235');
INSERT INTO "USER" VALUES('0000000019','MAD','MAX','ROADWARRIOR@GMAIL.COM','1 FURY RD','472-823-1238');
INSERT INTO "USER" VALUES('0000000020','LEBRON','JAMES','KINGJAMES@GMAIL.COM','23 CHAMPION RD','328-974-0636');
CREATE VIEW Albums_With_10_More_Copies AS
	SELECT Album_Name, Total_Copies
	FROM Album
	WHERE Total_Copies >= 10;
CREATE VIEW Rap_Album_List AS
	SELECT Album_ID, Album_Name
	FROM Album
	WHERE Genre = 'RAP';
CREATE INDEX idx_genre on Album(Genre);
CREATE UNIQUE INDEX idx_library_card_no on User(Library_Card_No);
