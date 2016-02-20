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

// while Loops:

var i = 1

while i < 6 {
    
    ++myFirstInt        // myFirstInt = 6 on first loop.
    
    print(myFirstInt)
    
    ++i
    
}   // end while i < 6

// the repeat while Statement (equivalent to do while in C-based language)

// 1. Declare the counter variable.

//var shields: Int = 10                // Sheilds in game

// 2. Build while loop.

//while shields >= 0   {

//    var shieldPercent: Double = Double(shields) * 0.10 * 100
//    if shields == 10    {
//    
//        print("Shields at maximum!")    // Print shield status
//        
//    }   else    {
//        
//        
//        print("Shields at \(shieldPercent)%!")
//        
//    }   // end if else

    // Fire phasers:
    
//    if shieldPercent != 0.0 {

//        print("Fire phasers!")
//        
//    }   else {
//        
//        print("Shields collapsed!")
//        
//    }   // end if-else

//    shields--                       // Decrement shields.
//    
//}   //  end while

// Now we modify the commented-out code above to demonstrate
// the repeat-while loop. This version assures that even if
// the condition is not met, that is, the shields are at 0 or
// less, the phasers will fire at least once (an improvement
// of user experience).

var shields: Int = 0                // Initialize at 0 to demonstrate point.

repeat  {

    var shieldPercent: Double = Double(shields) * 0.10 * 100
    
    if shields == 10    {

        print("Shields at maximum!")    // Print shield status

    }   else    {
        
        print("Shields at \(shieldPercent)%! Shields collapsed!")

    }   // end if-else
    
    print("Fire phasers!")


}   while shields > 0              // end repeat-while