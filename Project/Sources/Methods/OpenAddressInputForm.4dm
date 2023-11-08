//%attributes = {}

var $winRef : Integer
$winRef:=Open form window:C675([Address:6]; "InputForm")

DIALOG:C40([Address:6]; "InputForm")
CLOSE WINDOW:C154($winRef)