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

// Returning Multiple Values From Functions.

// NOTE: Here we make use of tuples (more study needed here) to return
//       more than one value for a function. In this case, one array of
//       even numbers and another of odd numbers is returned.

func sortEvenOdd(numbers: [Int]) -> (evens: [Int], odds: [Int])  {
    
    // Instantiate the arrays used by sortEvenOdd.
    
    var evens = [Int]()              // Array of even numbers
    
    var odds = [Int]()               // Array of odd numbers
    
    for number in numbers   {
        
        // Check if number's remainder after division by 2
        // is 0. If so, append to even array. Otherwise,
        // append to odd array.
        
        if number % 2 == 0  {
            
            evens.append(number)
            
        }   else    {
            
            odds.append(number)
            
        }   // end if
        
    }   // end for number in numbers
    
    return (evens, odds)
    
}   // end sortEvenOdd()

// Now instantiate an array of numbers.

let aBunchOfNumbers = [10, 1, 4, 3,
                       57, 43, 84, 27,
                       156, 111]

// Use sortEvenOdd to separate the array into even and odd numbers.

let theSortedNumbers = sortEvenOdd(aBunchOfNumbers)

// Now log the result to the console.

print("\nThe even numbers are: \(theSortedNumbers.evens); the odd",
      "numbers are: \(theSortedNumbers.odds)")

// Using an optional return.

func grabMiddleName( name: (String, String?, String) ) -> String?  {
    
    return name.1
    
}   // end grabMiddleName( name: (String, String?, String) ) -> String?

// Store return value from middle name to constant.

let middleName = grabMiddleName(("Matt", nil, "Mathias"))

// NOTE: The above function call returns nil because the middle String
//       optional is nil.

// Log the result to the console.

if let theName = middleName {
    
    print("\n\(theName)")
    
}   // end if

// NOTE: Nothing gets printed to the console because the value of theName
//       is nil.

// Early exits with guard statement.

//func greetByMiddleName( name: (first: String, middle: String?,
//                        last: String) ) {
//    
//    guard let middleName = name.middle else {
//        
//        print("\nHey there!")
//        
//        return
//        
//    }   // end guard
//    
//    print("\nHey, \(middleName)!")
//    
//}   // end greetByMiddleName( name: (first: String, middle, String?,
//    //                               last: String) )

// Call greetByMiddleName.

//greetByMiddleName( ("Matt", "Danger", "Mathias") )

// Bronze Challenge:
//
// guard statements support the use of where clauses. Using a where
// clause with a guard statement gives you further control over the
// statement’s condition. Refactor the greetByMiddleName(_:) function
// to have a where clause in its guard statement. This where clause
// should check to see if the middle name is fewer than 4 characters.
// If it is, then greet that person by their middle name. If it is not,
// then use the generic greeting.

// NOTE: In order to realize this challenge, I have commented out the
//       earlier implementation above.

func greetByMiddleName( name: (first: String, middle: String?,
                        last: String) )                         {
    
    guard let middleName = name.middle
    where name.middle?.characters.count < 4 else  {
        
        print("\nHey there!")
        
        return
        
    }   // end guard
    
    print("\nHey, \(middleName)!")
    
}   // end greetByMiddleName(...)

// Now call the function.

greetByMiddleName( ("Robert", "Lee", "Hieger") )

// Silver Challenge:
//
// Write a function called beanSifter(_:) that takes a grocery list
// (as an array of strings) and “sifts out” the beans from the other
// groceries. The function should take one argument that has an external
// parameter name called groceryList, and it should return a named tuple
// of the type (beans: [String], otherGroceries: [String]).
//
// Here is an example of how you should be able to call your function
// and what the result should be:
//
// l​e​t​ ​r​e​s​u​l​t​ ​=​ ​b​e​a​n​S​i​f​t​e​r​(​g​r​o​c​e​r​y​L​i​s​t​:​ ​[​"​g​r​e​e​n​ ​b​e​a​n​s​"​,
//   ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​"​m​i​l​k​"​,
// ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​   ​"​b​l​a​c​k​ ​b​e​a​n​s​"​,
//​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​  "​p​i​n​t​o​ ​b​e​a​n​s​"​,
//  ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​ ​"​a​p​p​l​e​s​"​]​)
//
// r​e​s​u​l​t​.​b​e​a​n​s​ ​=​=​ ​[​"​g​r​e​e​n​ ​b​e​a​n​s​"​,​ ​"​b​l​a​c​k​ ​b​e​a​n​s​"​,​ ​"​p​i​n​t​o​ ​b​e​a​n​s​"​]
// r​e​s​u​l​t​.​o​t​h​e​r​G​r​o​c​eries["milk", "apples"]
//
// Hint: you may need to make use of a function on the String type
// called hasSuffix(_:).

func beanSifter( groceryList: [String] ) -> (beans: [String],
                                  otherGroceries: [String]) {

    // Instantiate the arrays needed in the for-in loop below.

    var beans = [String]()              // Array of Strings with "bean"

    var otherGroceries = [String]()     // Array of Strings without "bean"
                                    
    for groceryItem in groceryList    {
                                        
        if groceryItem.hasSuffix("beans")    {
            
            beans.append(groceryItem)
            
        }   else    {
            
            otherGroceries.append(groceryItem)
            
        }   // end if-else
                                        
    }   // end for groceryItem in groceries
                                    
    return (beans, otherGroceries)
    
}   // end beanSifter(...)

// Call beanSifter.

// First instantiate an array with a grocery list.

var groceryList = ["green beans", "milk",
                   "black beans", "pinto beans",
                   "apples"]

let result = beanSifter(groceryList)

// Output results to console.

print("\nresult.beans == \(result.beans)")

print("\nresult.otherGroceries == \(result.otherGroceries)")
