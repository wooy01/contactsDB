//%attributes = {}
//Clear Phones
TRUNCATE TABLE:C1051([Contact:2])

//Load emails
$file:=Folder:C1567(fk desktop folder:K87:19).file("Contact.csv")
$fileText:=$file.getText()

$lines:=Split string:C1554($fileText; "\n")
For each ($line; $lines)
	cols:=Split string:C1554($line; ",")
	
	$newContact:=ds:C1482.Contact.new()
	$newContact.PrimaryID:=cols[0]
	$newContact.FirstName:=cols[1]
	$newContact.LastName:=cols[2]
	$newContact.Nickname:=cols[3]
	$newContact.Suffix:=cols[4]
	$newContact.Title:=cols[5]
	$newContact.Department:=cols[6]
	$newContact.Company:=cols[7]
	$newContact.HomeAddress:=cols[8]
	$newContact.BusinessAddress:=cols[9]
	$newContact.IsEmployee:=cols[10]="True"
	$newContact.IsITLiaison:=cols[11]="True"
	$newContact.save()
End for each 