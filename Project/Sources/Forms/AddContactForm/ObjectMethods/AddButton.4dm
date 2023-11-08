// Add new Contact object to the Contact table

// create new Contact
var $newContact : cs:C1710.ContactEntity
$newContact:=ds:C1482.Contact.new()  // Create a new entity with blank vaules in memory

$newContact.FirstName:=Form:C1466.FirstName
$newContact.LastName:=Form:C1466.LastName
$newContact.Nickname:=Form:C1466.Nickname
$newContact.Suffix:=Form:C1466.Suffix
$newContact.HomeAddress:=Form:C1466.HomeAddress
$newContact.BusinessAddress:=Form:C1466.BusinessAddress
$newContact.Title:=Form:C1466.Title
$newContact.Department:=Form:C1466.Department
$newContact.Company:=Form:C1466.Company
$newContact.IsEmployee:=Bool:C1537(Form:C1466.IsEmployee)
$newContact.IsITLiaison:=Bool:C1537(Form:C1466.IsITLiaison)
$newContact.EmployeeID:=Form:C1466.EmployeeID

/*
$newContact.FirstName:=OBJECT Get pointer(Object named; "FirstNameInput")->  
$newContact.LastName:=OBJECT Get pointer(Object named; "LastNameInput")->
$newContact.Nickname:=OBJECT Get pointer(Object named; "NicknameInput")->
$newContact.Suffix:=OBJECT Get pointer(Object named; "SuffixInput")->
$newContact.HomeAddress:=OBJECT Get pointer(Object named; "HomeAddressInput")->
$newContact.BusinessAddress:=OBJECT Get pointer(Object named; "BusinessAddressInput")->
$newContact.Title:=OBJECT Get pointer(Object named; "TitleInput")->
$newContact.Department:=OBJECT Get pointer(Object named; "DepartmentInput")->
$newContact.Company:=OBJECT Get pointer(Object named; "CompanyInput")->
$newContact.IsEmployee:=OBJECT Get pointer(Object named; "IsEmployee")->
$newContact.IsITLiaison:=OBJECT Get pointer(Object named; "IsITLiaison")->
*/

// save the new record and save the status
var $status : Object
$status:=$newContact.save()

Form:C1466.PrimaryID:=$newContact.PrimaryID

If ($status.success)
	// when save() success, send success message to the user
	ALERT:C41("Saved the new contact successfully!")
Else 
	// when save() fails, send error message to the user
	ALERT:C41("Failed to save!")
End if 

// close the AddContactForm
ACCEPT:C269












