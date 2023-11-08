// EditContactForm Form Method

// onload event --> I don't know if this is necessary. 
//try without this method since I'm handling everything in onclick event in EditContactButton object method
Case of 
	: (Form event code:C388=On Load:K2:1)
		// load phone listbox data
		//Form.PhoneSelection:=ds.Phone.query("ContactPID = :1"; Form.PrimaryID)
		
		// load email listbox data
		
End case 
