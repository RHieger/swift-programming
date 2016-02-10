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

// Calculate and describe Knowhere's unemployment rate:

// Cases of expired unempoloyment insurance

let expiredUI: Float = 825

// Cases of those insured by UI, but still not finding work

let sustainedUnemployment: Float = 1000

// Cases of those who have given up in despair of find work

let givenUp: Float = 1200

let floatPopulation = Float(population)

let unemploymentRate: Float =

    ( (expiredUI + sustainedUnemployment + givenUp) / floatPopulation ) * 100

let townDescription =
    "\(townName) has a population of \(population) " +
    "and \(numberOfStoplights) stoplights. In its current economic " +
    "downturn, \(townName) has an official unemployment rate of " +
    String(format: "%.1f", unemploymentRate) + "%."

// Log townDescription to console.

print(townDescription)