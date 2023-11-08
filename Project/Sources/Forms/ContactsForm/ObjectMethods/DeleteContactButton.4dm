// ContactsForm DeleteContactButton method

// 1. Single selection delete
//var $selectedRow : cs.ContactEntity
//$selectedRow:=Form.ContactEntity

//// delete record
//var $status : Object  // status for success/error message to the user
//$status:=$selectedRow.drop()


// 2. Multi selection delete
var $selectedRows : cs:C1710.ContactSelection
$selectedRows:=Form:C1466.ContactEntities

var $status : Object
var $count : Integer
$count:=0

For each ($contact; $selectedRows)
	// delete contact record
	$status:=$contact.drop()
	
	// break the loop if delete fails
	If ($status.success#True:C214)
		break
	Else 
		$count+=$count+1
	End if 
End for each 

// success and failure message to the user
If ($status.success)  // when success, $status return {success:True} objcet
	ALERT:C41("Success! You have deleted "+String:C10($count)+" contact(s)")
Else 
	ALERT:C41("Error during delete, try later!")
End if 

// refresh the Contact listbox
Form:C1466.ContactSelection:=ds:C1482.Contact.all().orderBy("FirstName asc, LastName asc")

// refresh the Search Contact listbox
Form:C1466.SearchContactSelection:=ds:C1482.Contact.all()


