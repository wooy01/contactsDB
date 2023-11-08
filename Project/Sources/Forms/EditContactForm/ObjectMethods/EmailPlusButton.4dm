// EditContactForm EmailPlusButton object method

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		var $obj : Object
		$obj:=New object:C1471
		$obj.ContactPID:=Form:C1466.PrimaryID
		
		// open AddPhoneForm
		var $winRef : Integer
		$winRef:=Open form window:C675("AddEmailForm")
		DIALOG:C40("AddEmailForm"; $obj)  // $obj is the Form object 
		
		// refresh the email listbox
		Form:C1466.EmailSelection:=ds:C1482.Email.query("ContactPID = :1"; Form:C1466.PrimaryID)
		
		CLOSE WINDOW:C154($winRef)
		
End case 