//%attributes = {}
var $winRef : Integer
$winRef:=Open form window:C675("ContactsForm")
// open the AddContactForm
DIALOG:C40("ContactsForm")

// fill the form from selected row
// how do I access EditContactForm
CLOSE WINDOW:C154($winRef)
