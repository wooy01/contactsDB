// SearchContactList Box Object Method

Case of 
		
	: (Form event code:C388=On Losing Focus:K2:8)
		
		// hide SearchContactListBox
		OBJECT SET VISIBLE:C603(*; "@SearchContactListBox@"; False:C215)
		
	: (Form event code:C388=On Double Clicked:K2:5)
		
		// get the selected item
		//var $selectedRow : cs.ContactEntity
		//$selectedRow:=Form.ContactEntity  // single selection
		
		//var $obj : Object
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
		
		// refresh the ContactListbox
		Form:C1466.ContactSelection:=ds:C1482.Contact.all().orderBy("FirstName asc, LastName asc")
		
		// refresh the SearchContactListbox
		Form:C1466.SearchContactSelection:=ds:C1482.Contact.all()
		
		// close the window
		CLOSE WINDOW:C154($winRef)
		
End case 