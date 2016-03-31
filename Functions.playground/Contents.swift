//: Playground - Functions: Chapter 12

import Cocoa

// Declare a function that prints a greeting to the console.

func printGreeting()    {
    
    print("Hello, playground.\n")
    
}   // end printGreeting()

// Call printGreeting().

printGreeting()


// Declare a function that takes a parameter for user name
// and prints a personal greeting to the console.

//func personalGreeting(name: String) {
//    
//    print("\nHello \(name), welcome to your playground.\n")
//    
//}   // end personalGreeting()
//
//// Call personalGreeting(name: String).
//
//personalGreeting("Bobby")

// Declare a function that performs a division operation
// and has two parameters num (numerator) and den
// (denominator) and whose result is a quotient.

//func divisionDescription(num: Double, den: Double)  {
//    
//    // Log result to console.
//    
//    print("\(num) divided by \(den) equals \(num / den).\n")
//    
//}   // end divisionDescription(num: Double, den: Double)

// Call function.

//divisionDescription(9.0, den: 3.0)

// Using Named Parameters.

// NOTE: Above implementation of divisionDescription() method
//       is commented out so that we may explore the same
//       functionality using named parameters.

func divisionDescription(forNumerator num: Double,
                       andDenominator den: Double)  {
    
    // Log calculation to console.
    
    print("\(num) divided by \(den) equals \(num / den).\n")
    
}   // end divisionDescription(forNumerator num: Double,
    //                       andDenominator den: Double)

// Call function.

divisionDescription(forNumerator: 9.0, andDenominator: 3.0)

// Using a variadic parameter, that is, a parameter that takes
// zero or more input values.

func printPersonalGreetings(names: String...)   {
    
    // Loop through the names of people we wish to greet.
    
    for name in names   {
        
        print("Hello, \(name), welcome to the playground.\n")
        
    }   // end for-in
    
}   // end printPersonalGreetings()

// Call function.

printPersonalGreetings("Alex", "Chris", "Drew", "Pat", "Bobby")

