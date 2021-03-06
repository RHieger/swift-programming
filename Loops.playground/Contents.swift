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

//var shields: Int = 0                // Initialize at 0 to demonstrate point.

//repeat  {

//    var shieldPercent: Double = Double(shields) * 0.10 * 100

//    if shields == 10    {
//
//        print("Shields at maximum!")    // Print shield status
//
//    }   else    {
//        
//        print("Shields at \(shieldPercent)%! Shields collapsed!")
//
//    }   // end if-else

//    print("Fire phasers!")

//}   while shields > 0              // end repeat-while

// Now we revise the above-commented code to explore control transfer
// statements explored earlier in Chapter 5.

// 1. Initialize the shield variable.

var shields = 5

var phasersOverheating = false      // Phaser Status

var phaserFireCount = 0             // Shots fired

var borgShipsDestroyed = 0          // Number of Borg ships destroyed

while shields > 0   {

    // Evaluate: Have 500 Borg ships been destroyed?
    
    if borgShipsDestroyed == 500    {
        
        // If 500 Borg ships destroyed, break out of
        // loop to end the game.
        
        print("You won the game! The Borg is defeated!")
        
        break                       // Breaks out of loop.
        
    }   // end if borgShipsDestroyed == 500
    
    // Evaluate: Are phasers overheating? If so, act accordingly.

    if phasersOverheating   {
    
        print("Phasers overheated! Cooldown initiated.")
    
        sleep(5)    // Pause for 5 seconds.
    
        print("Phasers ready to fire!")
    
        sleep(1)    // Pause for 1 second.
        
        phasersOverheating = false
        
        phaserFireCount = 0
        
    }   // end if

    // Evaluate: is phaserFireCount > 100? Act accordingly.

    if phaserFireCount > 100    {
    
        phasersOverheating = true   // Set status to true.
        
        continue                    // Return flow to top of loop.
    
    }   // end if
    
    // Print "Fire phasers!"
    
    print("Fire phasers!")
    
    ++phaserFireCount               // Increment phaser fire count.
    
    ++borgShipsDestroyed            // Increment Borg ships destroyed.
    
}   // end while shields > 0