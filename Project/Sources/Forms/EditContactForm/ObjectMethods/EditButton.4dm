// EditContactForm EditButton Object Method

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		
		var $status : Object
		$status:=Form:C1466.save()
		
		//// get the Form contact object
		//var $contact : cs.ContactEntity
		//$contact:=ds.Contact.get(Form.PrimaryID)
		
		//$contact.FirstName:=Form.FirstName
		//$contact.LastName:=Form.LastName
		//$contact.Nickname:=Form.Nickname
		//$contact.Suffix:=Form.Suffix
		//$contact.HomeAddress:=Form.HomeAddress
		//$contact.BusinessAddress:=Form.BusinessAddress
		//$contact.IsEmployee:=Bool(Form.IsEmployee)
		//$contact.Title:=Form.Title
		//$contact.Department:=Form.Department
		//$contact.Company:=Form.Company
		//$contact.IsITLiaison:=Bool(Form.IsITLiaison)
		//$contact.EmployeeID:=Form.EmployeeID
		
		//// save the record and the status
		//var $status : Object
		//$status:=$contact.save()
		
		// status message to the user
		If ($status.success)
			ALERT:C41("Saved the changes successfully!")
		Else 
			ALERT:C41("Failed to save!")
		End if 
		ACCEPT:C269
		
End case 

