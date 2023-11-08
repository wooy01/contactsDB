//%attributes = {}
var $test : Text  // declaration
var $contains : Boolean
$test:="Alpha Bravo Coco Computer Dog"  // Assignment
$contains:=$test%"Coco"  // string keyword contains checking

var $obVar : Object  // declaration
// var $oo : 4D.Object // equivalent
// C_OBJECT($oo) // equivalent
$obVar:=New object:C1471  // instantiation and assignment

var $obFilled : Object
$obFilled:=New object:C1471("name"; "smith"; "age"; 42)  // key-property;value;key-property;value


//////////////////////////////////////////////////////

// 4D.ClassName (this is object of the 4D Class name)
// cs.ClassName (this is object of the user class name)
// cs.<namespace><ClassName> (object of the namespace component class name)


//////////////////////////////////////////////////////

// Pointer
var $MyVar : Text
$MyVar:="Hello"

C_POINTER:C301($MyPointer)  // old way
var $MyPointer : Pointer  // new way

$MyPointer:=->$MyVar  // get a pointer to $MyVar
ALERT:C41($MyPointer->)

$MyPointer->:="Goodbye"  //$MyVar:="Goodbye" // the following two lines perform the same action
ALERT:C41($MyPointer->)
ALERT:C41($MyVar)


//////////////////////////////////////////////////////

// Variant

C_VARIANT:C1683($variant)
var $variant2 : Variant

$variant:="hello world"
$vtype:=Type:C295($variant)  // 12 : Variant
$vtypeVal:=Value type:C1509($variant)  // 2 : text

$variant2:=42
$vtype:=Type:C295($variant)  // 12
$vtypeVal:=Value type:C1509($variant)  // 1 : Real 

// what is Real ?? Big Number or the only decimal
// Number: Real, Longint, Integer

/////////////////////////////////////////////////////

var $foo : cs:C1710.ContactSelection
var $bar : cs:C1710.ContactEntity

$foo:=ds:C1482.Contact.query("FirstName = :1 AND LastName = :2"; $something; $second)
$bar:=$foo.first()



$foo.FirstName:="jacque"
//$foo.save()







