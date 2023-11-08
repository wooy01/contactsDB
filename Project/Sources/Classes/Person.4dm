// Person class
// class Definition not needed ? I don't think so

// class attributes
// V20 add property
//The property keyword can only be used in class methods and outside any Function block
//property firstName : Text
//property lastName : Text
//property fullname : Text
//property age : Integer

// constructor
Class constructor($firstName : Text; $lastName : Text; $age : Integer)
	This:C1470.firstName:=$firstName
	This:C1470.lastName:=$lastName
	This:C1470.age:=23
	
	// get set
Function get FirstName()->$firstName : Text  // -> means return $result : type
	$firstName:=This:C1470.firstName
	return $firstName
	
Function set FirstName($firstName : Text)
	This:C1470.firstName:=$firstName
	
Function get LastName()->$lastName : Text
	$lastName:=This:C1470.lastName
	return $lastName
	
Function set LastName($lastName : Text)
	This:C1470.lastName:=$lastName
	
Function get FullName()->$fullName : Text
	$fullName:=This:C1470.firstName+" "+Uppercase:C13(This:C1470.lastName)
	return $fullName
	
Function set FullName($firstName : Text; $lastName : Text)
	This:C1470.firstName:=$firstName
	This:C1470.lastName:=$lastName
	
	