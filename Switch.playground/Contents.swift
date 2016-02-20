//: Playground - Switch: Learning the Switch Statement

import Cocoa

// HTTP Status Code Error:

var statusCode: Int = 418

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
    
case let unknownCode where
(unknownCode >= 200 && unknownCode < 300) ||
unknownCode > 505:
        errorString = "\(unknownCode) is not a known error code."
    
default:
    errorString = "Unexpected error encountered."
    
}   // end switch statusCode

let error = (code: statusCode, error: errorString)

// Access the elements within tuple errorCode above:

error.code
error.error

// Another method for testing ranges of values:

let firstErrorCode = 404

let secondErrorCode = 200

let errorCodes = (firstErrorCode, secondErrorCode)

switch errorCodes   {
    
case (404, 404):
    print("No items found.")
    
case (404, _):
    print("First item not found.")
    
case (_, 404):
    print("Second item not found.")
    
default:
    print("All items found.")
    
}   // end switch errorCodes