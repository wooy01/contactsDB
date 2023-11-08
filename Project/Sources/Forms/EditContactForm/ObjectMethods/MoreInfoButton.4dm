// EditContactForm MoreInfoButton Object Method


Case of 
	: (Form event code:C388=On Load:K2:1)
		// check if the EmployeeID, if it's empty, hide the button
		// if it's filled, show the button
		If (Form:C1466.EmployeeID#Null:C1517)
			OBJECT SET VISIBLE:C603(*; "@MoreInfoButton@"; Length:C16(String:C10(Form:C1466.EmployeeID))>0)
		Else 
			OBJECT SET VISIBLE:C603(*; "@MoreInfoButton@"; False:C215)
		End if 
		
	: (Form event code:C388=On Clicked:K2:4)
		
		// open another form window
		// employee API call
		// get the response
		// parse JSON-formatted string (deserializes JSON data)
		// extract values and save it to variables
		// pass the data to the next form
		
End case 