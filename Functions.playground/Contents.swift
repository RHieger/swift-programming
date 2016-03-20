//: Playground - Functions: Chapter 12

import Cocoa

// Declare a function that prints a greeting to the console.

func printGreeting()    {
    
    print("Hello, playground.")
    
}   // end printGreeting()

// Call printGreeting().

printGreeting()


// Declare a function that takes a parameter for user name
// and prints a personal greeting to the console.

func personalGreeting(name: String) {
    
    print("\nHello \(name), welcome to your playground.\n")
    
}   // end personalGreeting()

// Call personalGreeting(name: String).

personalGreeting("Bobby")

// Declare a function that performs a division operation
// and has two parameters num (numerator) and den
// (denominator) and whose result is a quotient.

func divisionDescription(num: Double, den: Double)  {
    
    // Log result to console.
    
    print("\(num) divided by \(den) equals \(num / den).\n")
    
}   // end divisionDescription(num: Double, den: Double)

// Call function.

divisionDescription(9.0, den: 3.0)
