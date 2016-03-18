//: Playground - Chapter 10: Dictionaries

import Cocoa

// NOTE: The four declaration syntaxes for Dictionaries:
//
//       var dict1: Dictionary<String, Double> = [:]
//
//       Instantiates empty Dictionary object with
//       Dictionary literal syntax.
//
//       var dict2 = Dictionary<String, Double>()
//
//       Instantiates empty Dictionary object with
//       the default initializer.
//
//       var dict3: Dictionary[String:Double] = [:]
//
//       var dict4 = Dictionary[String:Double]()

// Instantiate and populate a Dictionary using literal syntax:

var movieRatings = [
                    "Donnie Darko": 4,
                    "Chunking Express": 5,
                    "Dark City": 4
                   ]

// Get the count of instances in the Dictionary
// and log it to the console.

print("I have rated \(movieRatings.count) movies.")
