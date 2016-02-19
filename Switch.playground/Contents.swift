//: Playground - Switch: Learning the Switch Statement

import Cocoa

// HTTP Status Code Error:

var statusCode: Int = 404

var errorString: String = "The request failed with the error: "

// statusCode will act as the value against which our comparison
// will be made in the switch statement below

switch statusCode   {
    
case 100, 101:
    errorString += " Informational, \(statusCode)."
    
case 204:
    errorString += " Successful but no content, \(statusCode)."
    
case 300...307:
    errorString += " Redirection, \(statusCode)."
    
case 400...417:
    errorString += " Client error, \(statusCode)."
    
case 500...505:
    errorString += " Server error, \(statusCode)."
    
default:
    errorString = "\(statusCode) is not a known error code."
    
}   // end switch statusCode