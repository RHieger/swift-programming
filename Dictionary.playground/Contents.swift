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

// Access a value from Dictionary:

let darkoRating = movieRatings["Donnie Darko"]

// Modifying a value in a Dictionary:

movieRatings["Dark City"] = 5

// Retrieve changed Dictionary

movieRatings

// Updating a Dictionary Value:

// Set the updateValue.

let oldRating: Int? =
movieRatings.updateValue(5, forKey: "Donnie Darko")

// If there is an update for the specified key, log it to
// the console.

if let lastRating = oldRating,
    currentRating = movieRatings["Donnie Darko"] {
        
        
        // Log old and new ratings to the console.
        
        print("Old rating: \(lastRating); Current rating: \(currentRating)")
        
}   // end if

// Adding a value to movieRatings:

movieRatings["The Cabinet of Dr. Caligari"] = 5

// Here is the updated Dictionary object, movieRatings:

movieRatings
