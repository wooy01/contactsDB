// ContactsForm AddContactButton object method

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		var $obj : Object
		$obj:=ds:C1482.Contact.new()
		
		//$obj:=New object --> This empty object has no data binding to the database table --> lesson learned not to do this way!
		//// initialization --> don't think this is the best appraoch
		//$obj.PrimaryID:=""
		//$obj.FirstName:=""
		//$obj.LastName:=""
		//$obj.Nickname:=""
		//$obj.Suffix:=""
		//$obj.HomeAddress:=""
		//$obj.BusinessAddress:=""
		//$obj.IsEmployee:=False
		//$obj.Title:=""
		//$obj.Department:=""
		//$obj.Company:=""
		//$obj.IsITLiaison:=False
		//$obj.EmployeeID:=0
		
		
		// open the AddContactForm
		var $winRef : Integer
		$winRef:=Open form window:C675("AddContactForm")
		//DIALOG("AddContactForm"; Form)  // Object, NOT Entity
		DIALOG:C40("AddContactForm"; $obj)  // $obj is Data to associate to AddContactForm
		
		// refresh the contact listbox
		Form:C1466.ContactSelection:=ds:C1482.Contact.all().orderBy("FirstName asc, LastName asc")
		
		// refresh the Search Contact listbox
		Form:C1466.SearchContactSelection:=ds:C1482.Contact.all()
		
		CLOSE WINDOW:C154($winRef)
		
		// open up the EditContactForm so user can add phones and emails
		// fill all the EditContactForm fields with the new Contact 
		$winRef:=Open form window:C675("EditContactForm")
		//DIALOG("EditContactForm"; Form)  // This Form is AddContactForm
		DIALOG:C40("EditContactForm"; $obj)  // pass $obj to EditContactForm
End case 

// create a collection and add the new value
//var $contacts : Collection
//$contacts:=New collection
//$contacts:=Form.contactSelection.toCollection()
//$contacts:=$contacts.push($obj)
//maybe use dataClass.fromCollection()
//Form.ContactSelection:=$contacts  // can't do this
