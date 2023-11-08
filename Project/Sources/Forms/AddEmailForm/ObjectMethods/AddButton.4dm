// AddEmailForm AddButton Object Method
// Add new Email entity to the Phone table

// create new email
var $newEmail : cs:C1710.EmailEntity
$newEmail:=ds:C1482.Email.new()

$newEmail.Email:=Form:C1466.Email
$newEmail.Type:=Form:C1466.Type  // When you use list type : OBJECT Get pointer(Object named; "Type")->
$newEmail.Primary:=Bool:C1537(Form:C1466.Primary)
$newEmail.ContactPID:=Form:C1466.ContactPID

// save the new record and the status
var $status : Object
$status:=$newEmail.save()

If ($status.success)
	ALERT:C41("Saved the new email successfully!")
Else 
	ALERT:C41("Failed to save!")
End if 

ACCEPT:C269