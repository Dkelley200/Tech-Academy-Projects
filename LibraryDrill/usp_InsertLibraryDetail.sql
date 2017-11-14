USE [LMS]
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertLibraryDetail]    Script Date: 11/12/2017 5:18:04 PM ******/


CREATE PROCEDURE [usp_InsertLibraryDetail]
AS

BEGIN

SET IDENTITY_INSERT BOOKDATA.BOOK ON
		
INSERT INTO BOOKDATA.BOOK (BookID,Title,PublisherName)
VALUES 
(1,'An American Marriage','Algonquin'),
(2,'The Case of the Deadly Doppelganger',' Amberjack'),
(3,'The Driest Season','Norton'),
(4,'Girl Unknown','Holt'),
(5,'Good Neighbors','Twelve'),
(6,'The Great Alone',' St Martins'),
(7,'The House of Impossible Beauties','Ecco'),
(8,'House Witness','Atlantic Monthly'),
(9,'In Every Moment We Are Still Alive',' Melville'),
(10,'The Plea','Flatiron'),
(11,'Song of a Captive Bird','Ballantine'),
(12,'The Lost Tribe','Del Rey'),
(13,'The Afterlives','Riverhead'),
(14,'The Beauty','Titan'),
(15,'The Black Painting','Hanover Square'),
(16,'Blood Sisters','Viking/Pamela Dorman'),
(17,'The Bloody Spur','Kensington'),
(18,'The Boat People','Doubleday'),
(19,'Brass','Random'),
(20,'Bringing Columbia Home The Untold Story','Arcade'),
(21,'Carnegies Maid','Sourcebooks Landmark'),
(22,'Collision Course','Sourcebooks'),
(23,'Death below Stairs','Berkley'),
(24,'Direct Fire','Kensington'),
(25,'Dont Look for Me','Pegasus'),
(26,'The English Wife','St Martins'),
(27,'The Epic City: Calcutta','Bloomsbury'),
(28,'Everything Here Is Beautiful','Viking/Pamela Dorman'),
(29,'Fire Sermon','Grove'),
(30,'The Girls in the Picture','Delacorte'),
(31,'The Graves a Fine and Private Place','Delacorte'),
(32,'Green','Random'),
(33,'Grist Mill Road','Picador'),
(34,'Hap and Hazard and the End of the World','Bellevue'),
(35,'Heart Spring Mountain','Ecco'),
(36,'Hellbent',' Minotaur'),
(37,'I Know My Name','Grand Central'),
(38,'I Love You Too Much','Little Brown'),
(39,'Impossible Saints','Pegasus'),
(40,'The Infinite Future','Penguin'),
(41,'Just between Us','St Martins'),
(42,'Keep Her Safe','Atria'),
(43,'Kill Me Now','Counterpoint'),
(44,'The King of Bones and Ashes','Amazon-47North'),
(45,'The Last Suppers','Kensington-John Scognamiglio'),
(46,'Light It Up','Putnam'),
(47,'Carrie','Crown'),
(48,'A Map of the Dark','Little  Brown'),
(49,'Mood Indigo','Poisoned Pen'),
(50,'The Music Shop','Random');

INSERT INTO BOOKDATA.BOOK_AUTHORS (BookID,AuthorName)
VALUES 
(1,' Tayari Jones'),
(2,' Lucy Banks'),
(3,' Meghan Kenny'),
(4,' Karen Perry'),
(5,' J D Serling'),
(6,' Kristin Hannah'),
(7,' Joseph Cassara'),
(8,' Mike Lawson'),
(9,' Tom Malmquist'),
(10,' Steve Cavanagh'),
(11,' Jasmin Darznik'),
(12,' Vic James'),
(13,' Thomas Pierce'),
(14,' Aliya Whiteley'),
(15,' Neil Olson'),
(16,' Jane Corry'),
(17,' Mickey Spillane'),
(18,' Sharon Bala'),
(19,' Xhenet Aliu'),
(20,' Michael D Leinbach'),
(21,' Marie Benedict'),
(22,' Marie Harte'),
(23,' Jennifer Ashley'),
(24,' A J Tata'),
(25,' Mason Cross'),
(26,' Lauren Willig'),
(27,' Kushanava Choudhury'),
(28,' Mira T Lee'),
(29,' Jamie Quatro'),
(30,' Melanie Benjamin'),
(31,' Alan Bradley'),
(32,' Sam Graham-Felsen'),
(33,' Christopher J Yates'),
(34,' Diane DeSanders'),
(35,' Robin MacArthur'),
(36,' Gregg Hurwitz'),
(37,' C J Cooke'),
(38,' Alicia Drake'),
(39,' Clarissa Harwood'),
(40,' Tim Wirkus'),
(41,' Rebecca Drake'),
(42,' K A Tucker'),
(43,' Timmy Reed'),
(44,' J D Horn'),
(45,' Mandy Mikulencak'),
(46,' Nick Petrie'),
(47,' Stephen KIng'),
(48,' Karen Ellis'),
(49,' Ed Ifkovic'),
(50,' Rachel Joyce');




INSERT INTO BOOKDATA.PUBLISHER (Name,Address,Phone)
VALUES 
('Amberjack','13457 somewhere lane  myCity ST 98562','505-253-6588'),
('Melville','13464 somewhere lane  myCity ST 98562','505-253-6595'),
('Minotaur','13491 somewhere lane  myCity ST 98562','505-253-6622'),
('Algonquin','13456 somewhere lane  myCity ST 98562','505-253-6587'),
('Amazon-47North','13499 somewhere lane  myCity ST 98562','505-253-6630'),
('Arcade','13475 somewhere lane  myCity ST 98562','505-253-6606'),
('Atlantic Monthly','13463 somewhere lane  myCity ST 98562','505-253-6594'),
('Atria','13497 somewhere lane  myCity ST 98562','505-253-6628'),
('Ballantine','13466 somewhere lane  myCity ST 98562','505-253-6597'),
('Bellevue','13489 somewhere lane  myCity ST 98562','505-253-6620'),
('Berkley','13478 somewhere lane  myCity ST 98562','505-253-6609'),
('Bloomsbury','13482 somewhere lane  myCity ST 98562','505-253-6613'),
('Counterpoint','13498 somewhere lane  myCity ST 98562','505-253-6629'),
('Crown','13502 somewhere lane  myCity ST 98562','505-253-6633'),
('Del Rey','13467 somewhere lane  myCity ST 98562','505-253-6598'),
('Delacorte','13485 somewhere lane  myCity ST 98562','505-253-6616'),
('Doubleday','13473 somewhere lane  myCity ST 98562','505-253-6604'),
('Ecco','13462 somewhere lane  myCity ST 98562','505-253-6593'),
('Flatiron','13465 somewhere lane  myCity ST 98562','505-253-6596'),
('Grand Central','13492 somewhere lane  myCity ST 98562','505-253-6623'),
('Grove','13484 somewhere lane  myCity ST 98562','505-253-6615'),
('Hanover Square','13470 somewhere lane  myCity ST 98562','505-253-6601'),
('Holt','13459 somewhere lane  myCity ST 98562','505-253-6590'),
('Kensington','13472 somewhere lane  myCity ST 98562','505-253-6603'),
('Little  Brown','13503 somewhere lane  myCity ST 98562','505-253-6634'),
('Norton','13458 somewhere lane  myCity ST 98562','505-253-6589'),
('Pegasus','13480 somewhere lane  myCity ST 98562','505-253-6611'),
('Penguin','13495 somewhere lane  myCity ST 98562','505-253-6626'),
('Picador','13488 somewhere lane  myCity ST 98562','505-253-6619'),
('Poisoned Pen','13504 somewhere lane  myCity ST 98562','505-253-6635'),
('Putnam','13501 somewhere lane  myCity ST 98562','505-253-6632'),
('Random','13474 somewhere lane  myCity ST 98562','505-253-6605'),
('Riverhead','13468 somewhere lane  myCity ST 98562','505-253-6599'),
('Sourcebooks','13477 somewhere lane  myCity ST 98562','505-253-6608'),
('St Martins','13481 somewhere lane  myCity ST 98562','505-253-6612'),
('Titan','13469 somewhere lane  myCity ST 98562','505-253-6600'),
('Twelve','13460 somewhere lane  myCity ST 98562','505-253-6591'),
('Viking-Pamela Dorman','13471 somewhere lane  myCity ST 98562','505-253-6602');



INSERT INTO LIBRARYDATA.LIBRARY_BRANCH (BranchID,BranchName,Address)
VALUES 
		(100,'Sharpstown', '582 Library Road  Sharpstown ST 98562'),
		(101,'Central', '3586 Library Road  Central ST 67562'),
		(102,'Uptown', '13498 Library Road  Uptown ST 98732'),
		(103,'Mayberry', '35821 Library Road Mayberry ST 42736');
		



INSERT INTO LIBRARYDATA.BORROWER(CardNo,Name,Address,Phone)
VALUES 
		('2500','Judy Jackson', '2582 Tulip Ave Smartown PA 58222','505-567-9123'),
		('2501', 'Martin Franco', '325 Tulip Ave Smartown PA 58222','505-567-9652'),
		('2503','George Smith', '9563 Tulip Ave Smartown PA 58222','505-597-1635'),
		('2504','Jordon Weekan', '358 Rose Ave Smartown PA 58254','505-558-2587'),
		('2505','Sandi Torge', '2596 Tulip Ave Smartown PA 58222','505-567-8563'),
		('2506','Marge Rowlet', '1258 Tulip Ave Smartown PA 58222','505-567-9158'),
		('2507','Mitch Kent', '3652 Tulip Ave Smartown PA 58222','505-567-9256'),
		('2508','John Mark', '9652 Tulip Ave Smartown PA 58222','505-567-8569');
		
		

INSERT INTO LIBRARYDATA.BOOK_LOANS (BookID,BranchID,CardNo,DueDate)
VALUES 
(29,100,2500,'2017-11-30'),
(5,102,2502,'2017-11-30'),
(32,103,2503,'2017-11-30'),
(33,100,2504,'2017-11-30'),
(34,101,2505,'2017-11-30'),
(35,102,2506,'2017-11-30'),
(36,103,2507,'2017-12-01'),
(8,102,2508,'2017-12-01'),
(37,100,2500,'2017-12-01'),
(39,102,2502,'2017-12-01'),
(9,103,2503,'2017-12-01'),
(41,103,2504,'2017-12-01'),
(42,101,2505,'2017-12-01'),
(43,102,2506,'2017-12-01'),
(46,103,2507,'2017-12-04'),
(47,101,2508,'2017-12-04'),
(49,100,2500,'2017-12-04'),
(12,100,2502,'2017-12-04'),
(13,103,2503,'2017-12-04'),
(14,100,2504,'2017-12-04'),
(15,101,2505,'2017-12-04'),
(17,102,2506,'2017-12-04'),
(18,103,2507,'2017-12-04'),
(2,102,2508,'2017-12-04'),
(3,100,2500,'2017-12-18'),
(27,102,2502,'2017-12-18'),
(30,103,2503,'2017-12-18'),
(31,100,2504,'2017-12-18'),
(6,101,2505,'2017-12-18'),
(7,102,2506,'2017-12-18'),
(40,103,2507,'2017-12-18'),
(44,102,2508,'2017-12-18'),
(45,100,2500,'2017-12-18'),
(10,102,2502,'2017-12-20'),
(48,103,2503,'2017-12-20'),
(1,100,2504,'2017-12-20'),
(16,101,2505,'2017-12-20'),
(19,102,2506,'2017-12-20'),
(20,103,2507,'2017-12-20'),
(21,102,2508,'2017-12-20'),
(22,100,2500,'2017-12-20'),
(24,102,2502,'2017-12-20'),
(25,103,2503,'2017-12-20'),
(28,100,2504,'2017-12-20'),
(4,101,2506,'2017-11-30'),
(38,101,2505,'2017-12-01'),
(11,101,2506,'2017-12-04'),
(26,101,2502,'2017-12-18'),
(50,101,2504,'2017-12-20'),
(23,101,2503,'2017-12-20');



		
INSERT INTO LIBRARYDATA.BOOK_COPIES (BookID,BranchID,No_of_Copies)
VALUES 
(48,100,2),
(1,100,5),
(16,100,8),
(19,100,6),
(20,100,2),
(21,103,4),
(22,100,3),
(23,100,7),
(24,100,5),
(25,100,2),
(28,101,5),
(29,101,8),
(4,101,6),
(5,101,2),
(32,101,4),
(33,101,3),
(34,101,7),
(35,101,5),
(36,101,2),
(8,101,5),
(37,102,8),
(38,102,6),
(39,102,2),
(9,102,4),
(41,102,3),
(42,102,7),
(43,102,5),
(46,102,2),
(47,101,5),
(49,102,8),
(11,103,6),
(12,101,2),
(13,103,4),
(14,103,3),
(15,103,7),
(17,103,5),
(18,103,2),
(2,103,5),
(3,103,8),
(26,103,6),
(12,100,4)
;


END