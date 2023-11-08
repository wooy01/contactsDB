//%attributes = {}
//Clear Phones
TRUNCATE TABLE:C1051([Phone:7])

//Load emails
$file:=Folder:C1567(fk desktop folder:K87:19).file("Phone.csv")
$fileText:=$file.getText()

$lines:=Split string:C1554($fileText; "\n")
For each ($line; $lines)
	cols:=Split string:C1554($line; ",")
	
	$newPhone:=ds:C1482.Phone.new()
	$newPhone.PrimaryID:=cols[0]
	$newPhone.Phone:=cols[1]
	$newPhone.Type:=cols[2]
	$newPhone.Primary:=cols[3]="True"
	$newPhone.ContactPID:=cols[4]
	$newPhone.Extension:=cols[5]
	$newPhone.save()
End for each 