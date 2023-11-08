// EditContactForm EmailMinusButton object method
// Delete selected email entities

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		
		// 1. Single Email entity deletion
		//var $selectedRow : cs.EmailEntity
		//$selectedRow:=Form.EmailEntity
		
		//// delete record
		//var $status : Object
		//$status:=$selectedRow.drop()
		
		// 2. Multiple Email entities deletion
		var $selectedEmails : cs:C1710.EmailSelection
		$selectedEmails:=Form:C1466.EmailEntities
		
		var $status : Object
		var $count : Integer
		$count:=0
		
		For each ($email; $selectedEmails)
			// delete email record
			$status:=$email.drop()
			
			If ($status.success#True:C214)
				break  // break the loop if delete fails
			Else 
				$count+=$count+1  // otherwise, increase the counter
			End if 
		End for each 
		
		// send success/failure message to the user
		If ($status.success)
			ALERT:C41("Success! You have deleted "+String:C10($count)+" email(s)")
		Else 
			ALERT:C41("Error during delete, try later!")
		End if 
		
		// refresh Email listbox
		Form:C1466.EmailSelection:=ds:C1482.Email.query("ContactPID = :1"; Form:C1466.PrimaryID)
		
End case 