//: Playground - Switch: Learning the Switch Statement

import Cocoa

// HTTP Status Code Error:

var statusCode: Int = 404

var errorString: String = "The request failed with the error: "

// statusCode will act as the value against which our comparison
// will be made in the switch statement below

switch statusCode   {
    
case 400, 401, 403, 404:
    errorString = "There was something wrong with the request."
    fallthrough
    
default:
    errorString += " Please review the request and try again."
    
}   // end switch statusCode