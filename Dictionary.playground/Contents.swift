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

// Removing a value from movieRatings:

//movieRatings.removeValueForKey("Dark City")

// NOTE: Above code commented out to allow for next exercise.

// Here is the updated Dictionary object, movieRatings:

//movieRatings

// NOTE: Since above code is commented out, there is no purpose in listing
// instances within the Dictionary.

// Setting a key's value to nil:

movieRatings["Dark City"] = nil

// Loop through the Dictionary and log its keys and values
// to the console.

print("\nMOVIE RATINGS:\n")

for (key, value) in movieRatings    {
    
    // Log to console:
    
    print("The movie \(key) was rated \(value).")
    
}   // end for (key, value) in movieRatings

// Loop through the Dictionary and log only its keys to the console.

print("\nMOVIES RATED:\n")

for movie in movieRatings.keys  {
    
    print("User has rated \(movie).")
    
}   // end for movie in movieRatings.keys

// Create an immutable Dictionary:

let album = [
                "Diet Roast Beef": 268,
                "Dubba Dubbs Stubs His Toe": 467,
                "Smokey's Carpet Cleaning Service": 187,
                "Track 4": 221
            ]
