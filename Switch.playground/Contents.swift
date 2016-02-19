//: Playground - Switch: Learning the Switch Statement

import Cocoa

// HTTP Status Code Error:

var statusCode: Int = 404

var errorString: String = "The request failed with the error: "

// statusCode will act as the value against which our comparison
// will be made in the switch statement below

switch statusCode   {
    
case 100, 101:
    errorString += " Informational, 1xx."
    
case 204:
    errorString += " Successful but no content, 204."
    
case 300...307:
    errorString += " Redirection, 3xx."
    
case 400...417:
    errorString += " Client error, 4xx."
    
case 500...505:
    errorString += " Server error, 5xx."
    
default:
    errorString += " Unknown. Please review the request and try again."
    
}   // end switch statusCode