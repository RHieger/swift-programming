//: Playground-- Exploring Conditionals in Swift

import Cocoa

var population: Int = 5422      // Population of Knowhere

var message: String             // String object for output message

var hasPostOffice: Bool = true  // Boolean variable for presence of post office

if population < 10000   {
    
    message = "\(population) is a small town!"
    
}   else    {
    
        if population >= 10000 && population < 50000 {
        
            message = "\(population) is a medium town!"
        
        }   else {
        
            message = "\(population) is pretty big!"
        
    }   // end inner if-else
    
}   // end if-else

// Print message to console.

print(message)

// If town does not have post office print message to console:

if !hasPostOffice   {
    
    print("Where do we buy stamps?")
    
}
