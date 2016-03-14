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
