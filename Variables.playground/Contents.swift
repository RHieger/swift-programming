//: Playground - Variables and Variable Operations

import Cocoa

let numberOfStoplights: Int = 4     // Explicit type declaration

// Mixing types--this will throw error. It is therefore commented out.

//numberOfStoplights += 2

//numberOfStoplights += 2           // After numberOfStoplights converted
                                    // to a constant, its value is no longer
                                    // mutable, and thus, this line of code
                                    // is commented out.

var population: Int = 5422

let townName: String = "Knowhere"

// Interpolate above variables to create a constant townDescription.

let townDescription =
    "\(townName) has a population of \(population) " +
    "and \(numberOfStoplights) stoplights."

// Log townDescription to console.

print(townDescription)