//: Playground - Explore Optionals and Optional Chaining

import Cocoa

// Declare an optional type.

var errorCodeString: String?

// Set value of errorCodeString.

errorCodeString = "404"

// Log value of optional errorCodeString to console.

print(errorCodeString)

// Demonstrate Logging nil value of optional to console.

var errorCodeString2: String?   // Another error code String

// Log this optional's nil value to console.

print(errorCodeString2)

// Adding a condition to errorCodeString to test whether a type is nil:

if errorCodeString != nil    {
    
    let theError = errorCodeString!     // Forcibly unwrapped optional
    
    // Output theError to console.
    
    print(theError)
    
}   // end if

// Adding a condition to errorCodeString2 to test whether a type is nil:

if errorCodeString2 != nil  {
    
    let theError = errorCodeString2!
    
    // Output theError to console.
    
    print(theError)
    
}   else    {
    
    print(errorCodeString2)
    
}   // end if-else

// Optional Binding:

var errorCodeString3: String?

// Assign value to errorCodeString3.

errorCodeString3 = "500"

// Now write conditional with optional binding:

if let theError = errorCodeString3 {
    
    print(theError)     // Log theError to console if not nil
    
}   // end if

// Nested Optional Binding:

var errorCodeString4: String?

// Assign value to errorCodeString4.

errorCodeString4 = "403"

// Now write nested conditional with nested optional binding:

if let theError = errorCodeString4  {
    
    // Now type cast errorCodeString4 to type Int in optional binding.
    
    if let errorCodeInteger = Int(theError) {
        
        print("\(theError): \(errorCodeInteger)")
        
    }   // end if
    
}   // end if

// Unwrapping multiple optionals in one conditional statement:

// NOTE: The output of multiple optionals unwrapped in the same
//       conditional has the same console output as the nested
//       conditionals and optional binding shown above.

if let theError = errorCodeString4, errorCodeInteger = Int(theError)    {
    
    print("\(theError): \(errorCodeInteger)")
    
}   // end if

// Adding a where clause to multiple optional binding:

// NOTE: Here we re-use our old friend errorCodeString from above to
// demonstrate that with the where clause, we enforce a condition
// that a specified error code string must be found in order for
// the print to console to be executed. Both optionals must
// successfully unwrap, or the log to console will not occur.

if let theError = errorCodeString, errorCodeInteger = Int(theError)
    
    where errorCodeInteger == 404   {
        
        print("\(theError): \(errorCodeInteger)")
        
}   // end if

// Now we will use our old friend, errorCodeString, to explore
// optional chaining:

var errorDescription: String?       // Descriptive error message

if let theError = errorCodeString, errorCodeInteger = Int(theError)

    where errorCodeInteger == 404    {
        
        errorDescription = ("\(errorCodeInteger + 200): the requested resource was not found.")
        
}   // end if

// Convert message to all capital letters.

var upCaseErrorDescription = errorDescription?.uppercaseString

// Log message to console.

print(upCaseErrorDescription)

// Modify Optional in place with appendContentsOf(_:).

upCaseErrorDescription?.appendContentsOf(" PLEASE TRY AGAIN.")

// Log message to console.

print(upCaseErrorDescription)


// The nil coalescing operator:

let description = errorDescription ?? "No error"

// Log description to console.

print(description)
