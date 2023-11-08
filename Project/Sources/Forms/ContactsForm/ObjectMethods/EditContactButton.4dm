// ContactsForm EditContactButton Object Method

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		// grab the highlighted entity
		var $selectedRow : cs:C1710.ContactEntity
		$selectedRow:=Form:C1466.ContactEntity  // single selection
		
		//var $obj : Object  // form data object, load the data here
		//$obj:=New object
		//$obj.PrimaryID:=$selectedRow.PrimaryID  // Contact PrimaryID
		//$obj.FirstName:=$selectedRow.FirstName
		//$obj.LastName:=$selectedRow.LastName
		//$obj.Nickname:=$selectedRow.Nickname
		//$obj.Suffix:=$selectedRow.Suffix
		//$obj.HomeAddress:=$selectedRow.HomeAddress
		//$obj.BusinessAddress:=$selectedRow.BusinessAddress
		//$obj.IsEmployee:=$selectedRow.IsEmployee
		//$obj.Title:=$selectedRow.Title
		//$obj.Department:=$selectedRow.Department
		//$obj.Company:=$selectedRow.Company
		//$obj.IsITLiaison:=$selectedRow.IsITLiaison
		//$obj.EmployeeID:=$selectedRow.EmployeeID
		
		//// list of phones for this contact
		//var $PhoneSelection : cs.EntitySelection
		//$PhoneSelection:=ds.Phone.query("ContactPID=:1"; $obj.PrimaryID)
		//$obj.PhoneSelection:=$PhoneSelection
		
		//// list of emails for this contact
		//var $EmailSelection : cs.EntitySelection
		//$EmailSelection:=ds.Email.query("ContactPID=:1"; $obj.PrimaryID)
		//$obj.EmailSelection:=$EmailSelection
		
		// open the EditContactForm
		var $winRef : Integer
		$winRef:=Open form window:C675("EditContactForm")  // open a new window using the size and resizing properties
		
		DIALOG:C40("EditContactForm"; Form:C1466.ContactEntity)  // pass $obj to the form, you can only pass one parameter
		//DIALOG("EditContactForm"; $obj)
		
		// refresh the contact listbox
		Form:C1466.ContactSelection:=ds:C1482.Contact.all().orderBy("FirstName asc, LastName asc")
		
		// refresh the Search Contact listbox
		Form:C1466.SearchContactSelection:=ds:C1482.Contact.all()
		
		// close the window
		CLOSE WINDOW:C154($winRef)
		
End case 