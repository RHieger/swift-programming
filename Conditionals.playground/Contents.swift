//: Playground-- Exploring Conditionals in Swift

import Cocoa

var population: Int = 5422      // Population of Knowhere

var message: String             // String object for output message

if population < 10000   {
    
    message = "\(population) is a small town!"
    
}   else    {
    
    message = "\(population) is pretty big!"
    
}   // end if-else

// Print message to console.

print(message)