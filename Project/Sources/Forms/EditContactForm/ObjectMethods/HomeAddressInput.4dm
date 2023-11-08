// EditContactForm HomeAddressInput Object Method

Case of 
	: (Form event code:C388=On Double Clicked:K2:5)
		
		// url to use Google Map API
		var $googleMapApiURL : Text
		$googleMapApiURL:="https://www.google.com/maps/@?api=AIzaSyCnsOBZAoTlXdhCMIy7-IvzLuonTFfwcUs&map_action=map&q="
		
		
		// URL encode the Business Address
		// couldn't find any built in 4D encoding method
		// so I am going to replace space to %20, comma to %2C, period to %2E , # to %23
		var $encodedAddress : Text
		$encodedAddress:=Form:C1466.HomeAddress
		$encodedAddress:=Replace string:C233($encodedAddress; " "; "%20")
		$encodedAddress:=Replace string:C233($encodedAddress; ","; "%2C")
		$encodedAddress:=Replace string:C233($encodedAddress; "."; "%2E")
		$encodedAddress:=Replace string:C233($encodedAddress; "#"; "%23")
		
		$googleMapApiURL:=$googleMapApiURL+$encodedAddress
		
		
		Form:C1466.GoogleMapApiURL:=$googleMapApiURL
		
		WA OPEN URL:C1020(*; "GoogleMapWebArea"; $googleMapApiURL)
		
	: (Form event code:C388=On After Keystroke:K2:26)
		Case of 
			: (Character code:C91(Keystroke:C390)=Carriage return:K15:38)  //  Return key above shift
				
				// url to use Google Map API
				var $googleMapApiURL : Text
				$googleMapApiURL:="https://www.google.com/maps/@?api=AIzaSyCnsOBZAoTlXdhCMIy7-IvzLuonTFfwcUs&map_action=map&q="
				
				
				// URL encode the Business Address
				// couldn't find any built in 4D encoding method
				// so I am going to replace space to %20, comma to %2C, period to %2E , # to %23
				var $encodedAddress : Text
				$encodedAddress:=Form:C1466.HomeAddress
				$encodedAddress:=Replace string:C233($encodedAddress; " "; "%20")
				$encodedAddress:=Replace string:C233($encodedAddress; ","; "%2C")
				$encodedAddress:=Replace string:C233($encodedAddress; "."; "%2E")
				$encodedAddress:=Replace string:C233($encodedAddress; "#"; "%23")
				
				$googleMapApiURL:=$googleMapApiURL+$encodedAddress
				
				Form:C1466.GoogleMapApiURL:=$googleMapApiURL
				
				WA OPEN URL:C1020(*; "GoogleMapWebArea"; $googleMapApiURL)
				
				//: (Character code(Keystroke)=Enter)  // Enter key in the Numpand close the Form window. WHY ?
				//ALERT("hi")
				
		End case 
End case 