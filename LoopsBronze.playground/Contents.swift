//: Playground - Loops: Chapter 6 Bronze Challenge

import Cocoa

/*******************************************************
 *                                                     *
 * Chapter 6 Bronze Challenge: Page 144                *
 *                                                     *
 * “Use a loop to count by 2 from 0 up to 100. Use     *
 * another loop to make sure the first loop is run     *
 * 5 times. Hint: one good way to do this is to use    *
 * a nested loop.”                                     *
 *                                                     *
 *******************************************************
*/

// MY ANSWER:

// 1. Initialize variables for nested loops.

var loopCount = 0           // Outer loop counter
var i = 0                   // Inner loop counter.

// 2. Construct outer and inner loops. The outer loop
//    makes sure that the count by 2 from 0 to 100
//    happens 5 times. The inner count makes sure that
//    the count actually happens and is logged to the
//    console in progression of "2, 4, 6..."

for loopCount in 1...5  {
    
    for i = 0; i <= 100; i += 2    {
        
        
        print("i = \(i)")
        
    }   // end inner for
    
    print("That's \(loopCount)!")
    
}   // end outer for