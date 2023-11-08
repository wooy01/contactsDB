// ContactsForm SearchText Object Method

Case of 
	: (Form event code:C388=On After Edit:K2:43)  // After each change made to the textbox
		var $search : Text
		$search:=Get edited text:C655
		
		OBJECT SET VISIBLE:C603(*; "@SearchContactListBox@"; Length:C16($search)>0)
		
		var $query : Text
		
		// Build queries with the search text
		var $fnSearch; $lnSearch; $titleSearch; $deptSearch; $comSearch; $result : cs:C1710.ContactSelection
		$fnSearch:=ds:C1482.Contact.query("FirstName = :1"; $search+"@")
		$lnSearch:=ds:C1482.Contact.query("LastName = :1"; $search+"@")
		$titleSearch:=ds:C1482.Contact.query("Title = :1"; $search+"@")
		$deptSearch:=ds:C1482.Contact.query("Department = :1"; $search+"@")
		$compSearch:=ds:C1482.Contact.query("Company = :1"; $search+"@")
		
		$result:=$fnSearch.or($lnSearch).or($titleSearch).or($deptSearch).or($compSearch)
		
		// and reload the SearchContactListBox
		Form:C1466.SearchContactSelection:=$result
		
End case 
