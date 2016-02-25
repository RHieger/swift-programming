//: Playground - Strings: a sandbox for String functionality

import Cocoa

let playground = "Hello, playground!"

// Make a mutable string:

var mutablePlayground = "Hello, mutable playground"

// Concatenate exclamation point to mutablePlayground String:

mutablePlayground += "!"

for c: Character in mutablePlayground.characters {
    
    print("\(c)")
    
}   // end for c: Character in mutablePlayground.characters

// Add Unicode Scalar for Emoji Smiley Face with Sunglasses:

let oneCoolDude = "\u{1f60e}"

// Create a Combining Scalar for a with acute accent:

let aAcute = "\u{0061}\u{0301}"

// Decompose the Unicode Scalars that appear in the constant
// playground declared above:

for scalar in playground.unicodeScalars {
    
    print("\(scalar.value)")
    
    // NOTE: This prints not the Unicode value, but its
    //       32 bit decimal equivalent.
    
}   // end for scalar in playground.unicodeScalars

// Creating a Canonical Equivalent for a Combined Scalar--a with acute accent:

let aAcutePrecomposed = "\u{00e1}"  // a with acute accent

// Check for equivalence between aAcute and aAcutePrecomposed:

let b = (aAcute == aAcutePrecomposed)   // Boolean true

// Counting Characters
//
// NOTE: A canonical equivalent will be the same in count as its
//       constituent Unicode Scalars. In other words, even though
//       the scalars are more in number than a canonical equivalent,
//       they will be counted as the same amount as the equivalent
//       because of their canonic relationship.

print("aAcute Character Count: \(aAcute.characters.count)\n",
    "aAcutePrecomposed Character Count: \(aAcutePrecomposed.characters.count)")

// Finding a specific index within a String:

let fromStart = playground.startIndex   // 0 index of String

let toPosition = 4                      // 5th character of String

let end = fromStart.advancedBy(toPosition)

let fifthCharacter = playground[end]    // Now we can access the index.
