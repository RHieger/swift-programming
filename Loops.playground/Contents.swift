//: Playground - Loops

import Cocoa

var myFirstInt: Int = 0

for case let i in 1...100 where i % 3 == 0  {
    
    print(i)
    
}   // end for i in 1...100 where i % 3 == 0

// Classic for loop:

for var i = 1; i < 6; ++i   {
    
    ++myFirstInt
    print(myFirstInt)
    
}   // end for var i = 1; i < 6; ++i