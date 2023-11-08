// EditContactForm PhoneMinusButton object method
// Delete selected Phone entities

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		
		//1. Single Phone entity deletion
		//var $selectedRow : cs.PhoneEntity
		//$selectedRow:=Form.PhoneEntity
		
		//// delete record
		//var $status : Object
		//$status:=$selectedRow.drop()
		
		
		// 2. Multiple Phone entities deleted
		var $selectedPhones : cs:C1710.PhoneSelection
		$selectedPhones:=Form:C1466.PhoneEntities
		
		var $status : Object
		var $count : Integer
		$count:=0
		
		For each ($phone; $selectedPhones)
			// delete phone record
			$status:=$phone.drop()
			
			If ($status.success#True:C214)
				break  // break the loop if delete fails
			Else 
				$count+=$count+1  // otherwise, increase the counter
			End if 
			
		End for each 
		
		// success failture message to the user
		If ($status.success)
			ALERT:C41("Success! Deleted "+String:C10($count)+" phone(s)")
		Else 
			ALERT:C41("Error during delete, try later!")
		End if 
		
		// Refresh the Phone listbox
		Form:C1466.PhoneSelection:=ds:C1482.Phone.query("ContactPID = :1"; Form:C1466.PrimaryID)
		
End case 