//%attributes = {}
//Clear emails
TRUNCATE TABLE:C1051([Email:5])

//Load emails
$file:=Folder:C1567(fk desktop folder:K87:19).file("Email.csv")
$fileText:=$file.getText()

$lines:=Split string:C1554($fileText; "\n")
For each ($line; $lines)
	cols:=Split string:C1554($line; ",")
	
	$newEmail:=ds:C1482.Email.new()
	$newEmail.PrimaryID:=cols[0]
	$newEmail.Email:=cols[1]
	$newEmail.Type:=cols[2]
	$newEmail.Primary:=cols[3]="True"  // this is string to boolean type casting ?
	$newEmail.ContactPID:=cols[4]
	
	$newEmail.save()
End for each 