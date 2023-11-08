// EditContactForm PhonePlusButton object method

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		var $newPhone : cs:C1710.PhoneEntity
		$newPhone:=ds:C1482.Phone.new()
		$newPhone.ContactPID:=Form:C1466.PrimaryID
		
		//var $obj : Object  // form data object, load the data here
		//$obj:=New object
		//$obj.ContactPID:=Form.PrimaryID  // Form is EditContactForm; Contact PrimaryID
		
		// open AddPhoneForm
		var $winRef : Integer
		$winRef:=Open form window:C675("AddPhoneForm")
		DIALOG:C40("AddPhoneForm"; $newPhone)  // $obj is the Form object 
		
		If (OK=1)
			$newPhone.save()
			//TODO refresh phone listbox 
			//Form.PhoneSelection:=ds.Phone.query("ContactPID = :1"; Form.PrimaryID)
			Form:C1466.reload()
		End if 
		
		
		// refresh the phone listbox
		//
		
		CLOSE WINDOW:C154($winRef)
		
End case 