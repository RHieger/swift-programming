//: Playground - Switch: Learning the Switch Statement

import Cocoa

// HTTP Status Code Error:

var statusCode: Int = 404

var errorString: String         // Variable for error string

// statusCode will act as the value against which our comparison
// will be made in the switch statement below

switch statusCode   {
    
case 400:
    errorString = "Bad request"
    
case 401:
    errorString = "Unauthorized"
    
case 403:
    errorString = "Forbidden"
    
case 404:
    errorString = "Not found"
    
default:
    errorString = "None"
    
}   // end switch statusCode