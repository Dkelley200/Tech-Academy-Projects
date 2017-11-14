USE [LMS]
GO
/****** Object:  StoredProcedure [dbo].[usp_answerDrill]    Script Date: 11/11/2017 8:52:31 AM ******

******* Dianna Kelley answers to Create Library drill*******

Using TableList
		bookdata.book  B
		bookdata.book_authors A
		bookdata.publisher P
		Librarydata.book_copies C
		Librarydata.book_loans g
		Librarydata.borrower f
		Librarydata.Library_Branch L
*******************************************************************************/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE Procedure [dbo].[usp_answerDrill]

AS

BEGIN


--1. 

Select C.No_Of_Copies, L.branchname, b.title
From bookdata.book B
inner join Librarydata.book_copies C
 on b.bookid = C.bookid
 inner join Librarydata.Library_Branch L
 on L.branchid = C.branchid
where B.title = 'The Lost Tribe' and L.branchname = 'Sharpstown');

--2

Select C.branchid,  C.No_Of_Copies
From  Librarydata.book_copies C
	inner join bookdata.book B
		on   B.bookid = C.bookid and B.title = 'The Lost Tribe' 
;


--3.  
select f.name
from Librarydata.borrower f  
where cardno not in 
		(select cardno from Librarydata.book_loans);
 



--4.
Declare @duedate date
set @duedate = '2017-11-30'

select B.title, f.name , f.address
from Librarydata.borrower f
	inner join Librarydata.book_loans g
		on f.cardno = g.cardno
	inner join bookdata.book  B
		on B.bookid  =  g.bookid
	inner join Librarydata.Library_Branch L
		on L.branchid  =  g.branchid
where L.branchname = 'Sharpstown' and g.duedate = @duedate

--5.
Select L.branchname, count(g.bookid) BooksOnLoan
from  Librarydata.Library_Branch L
	inner join Librarydata.book_loans g
		on L.branchid  = g.branchid
group by  g.branchid, L. branchname;


--6.
Select f.name, f.[address],count(g.bookid)LoanQty
From Librarydata.book_loans g
	inner join Librarydata.borrower f
		on g.cardno = f.cardno
group by f.name,f.[address]
having (count(g.bookid) > 5)



--7.
select B.title, C.No_Of_Copies, a.authorname, L.branchname
from Librarydata.book_copies C
inner join bookdata.book  B
on  C.Bookid  = B.Bookid
inner join Librarydata.Library_Branch L
		on  C.branchid = L.branchid
inner join  bookdata.book_authors A
	     on B.bookid = A.bookid
 where A.authorname = ' Stephen King' and L.branchname = 'Central'
 Group by A.bookid, B.title,C.No_Of_Copies, a.authorname, L.branchname
 ;


END
