CREATE FUNCTION losuj ()
	Returns uniqueidentifier As
		begin Return (select ID From vLosuj) END

