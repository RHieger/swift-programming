//: Playground - Groceries Silver Challenge

import Cocoa

// Rework all chapter for _(:union) and _(:intersect) methods
// using in-place modification. In other words, find the methods
// on the Set class that allow these modifications without
// instantiating additional Set instances.

// Instantiate Set groceryBag.

var groceryBag = Set(["Apples", "Oranges", "Pineapple"])

// Create a union between groceryBag and a Set literal, rather
// than a Set object, using _(:unionInPlace) method.

groceryBag.unionInPlace(["Bananas", "Cereal", "Milk", "Oranges"])

var commonGroceryBag = Set<String>()

for item in groceryBag  {
    
    // Populate commonGroceryBag
    
    commonGroceryBag.insert(item)
    
}

// Show the intersection between commonGroceryBag and
// Set roommatesGroceryBag.

// First instantiate Set roommatesGroceryBag.

let roommatesGroceryBag = Set(["Apples", "Bananas", "Cereal", "Toothpaste"])

// Now apply _(:intersectInPlace) Method.

commonGroceryBag.intersectInPlace(roommatesGroceryBag)
