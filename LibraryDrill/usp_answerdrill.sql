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

Select count(bookid)
From bookdata.book
where title = 'The Lost Tribe';

--2

Select L.branchid, L.branchname, count(b.bookid) Qty
From Librarydata.Library_Branch L
	inner join Librarydata.book_copies C
		on c.branchid = L.branchid
	full outer join bookdata.book B
		on  B.title = 'The Lost Tribe' and B.bookid = C.bookid
where L.branchid is not NULL
group by L.branchname,L.branchid
having count(L.branchid) >= 0
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
select B.title, count(A.bookid) QtyOwned
from bookdata.book_authors A
	inner join bookdata.book  B
		on B.bookid = A.bookid
	inner join Librarydata.book_copies C
		on  C.Bookid  = B.Bookid
	inner join Librarydata.Library_Branch L
		on  C.branchid = L.branchid
 where A.authorname = 'Stephen King' and L.branchname = 'Central'
 Group by A.bookid, B.title;

END
