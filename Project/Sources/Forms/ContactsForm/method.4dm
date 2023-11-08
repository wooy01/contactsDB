// ContactsForm Form Method

//var contactSelection : cs.ContactSelection
//var contactEntity : cs.ContactEntity


Case of 
	: (Form event code:C388=On Load:K2:1)
		
		// Load ContactListbox data
		Form:C1466.ContactSelection:=ds:C1482.Contact.all().orderBy("FirstName asc, LastName asc, Title asc, Department asc, Company asc")
		
		// Load SearchContactListbox data
		Form:C1466.SearchContactSelection:=ds:C1482.Contact.all()
		
End case 
