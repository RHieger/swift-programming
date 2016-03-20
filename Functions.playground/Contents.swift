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
