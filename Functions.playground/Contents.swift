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

func personalGreeting(name: String) {
    
    print("Hello \(name), welcome to your playground.\n")
    
}   // end personalGreeting()

// Call personalGreeting(name: String).

personalGreeting("Bobby")

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

//func divisionDescription(forNumerator num: Double,
//                       andDenominator den: Double)  {
//    
//    // Log calculation to console.
//    
//    print("\(num) divided by \(den) equals \(num / den).\n")
//    
//}   // end divisionDescription(forNumerator num: Double,
//    //                       andDenominator den: Double)
//
//// Call function.
//
//divisionDescription(forNumerator: 9.0, andDenominator: 3.0)

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

// Using Default Parameter Values.

// NOTE: I have commented out the implementation of divisionDescription()
//       above so that I may demonstrate the same function with a default
//       parameter value. Here the parameter withPunctuation is added. It
//       is given a default value and so we needn't provide this parameter
//       with a value. But we can. This adds a desirable flexibility to
//       the method.

//func divisionDescription(forNumerator num: Double,
//                       andDenominator den: Double,
//              withPunctuation punctuation: String = ".")  {
//    
//    // Print calculation to console.
//    
//    print("\(num) divided by \(den) equals \(num / den)\(punctuation)\n")
//    
//}   // end divisionDescription()
//
//// Call function without final parameter.
//
//divisionDescription(forNumerator: 9.0, andDenominator: 3.0)
//
//// Call function with final parameter specified.
//
//divisionDescription(forNumerator: 9.0,
//                    andDenominator: 3.0,
//                    withPunctuation: "!")

// Using the inout parameter in a function:

// First define a string variable with a basic, but incomplete
// error message.

var error = "The request failed:"

// Now we define a function that will use the inout parameter to
// modify the value of the String error.

func appendErrorCode(code: Int,
                     inout toErrorString errorString: String)  {
    
    if code == 400  {
        
        errorString += " bad request."
        
    }   // end if
    
}   // end appendErrorCode(code: Int, inout toErrorString errorString: String)

// Call appendErrorCode:

appendErrorCode(400, toErrorString: &error)

error

// Returning Values from a Function:

// NOTE: The earlier divisionDescription() function above is now
//       commented out in order to demonstrate implementing the
//       function so that it returns a String value. Below is the
//       similar, but more useful function.

func divisionDescription(forNumerator num: Double,
                       andDenominator den: Double,
              withPunctuation punctuation: String = ".") -> String  {
    
    return "\(num) divided by \(den) equals \(num / den)\(punctuation)"
    
}   // end divisionDescription(...)

// Call divisionDescription and log to console.

print( divisionDescription(forNumerator: 9.0,
                         andDenominator: 3.0,
                        withPunctuation: "!") )

// Nested Functions:

// NOTE: A nested function is defined within the code block of another
//       function; therefore, it is only available within the function
//       that encloses it. Trying to call that function from outside of
//       its enclosing function would fail as out-of-scope.


// FORMULA: A = (base * height) / 2

func areaOfTriangle(withBase base: Double,
                 andHeight height: Double) -> Double  {
    
    let numerator = base * height
    
    func divide() -> Double {
        
        return numerator / 2
        
    }   // end divide()
    
    return divide()             // Returns result of divide()
    
}   // end areaOfTriangle(...)

// Call areaOfTriangle.

areaOfTriangle(withBase: 3.0, andHeight: 5.0)
