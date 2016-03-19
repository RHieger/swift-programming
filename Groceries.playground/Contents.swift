//: Playground - Groceries: Chapter 11

import Cocoa

// Instantiate a Set called groceryBag.

//var groceryBag = Set<String>()

// Add some elements to groceryBag:

//groceryBag.insert("Apples")
//
//groceryBag.insert("Oranges")
//
//groceryBag.insert("Pineapples")

// NOTE: The above code is commented out in order to demonstrate a
//       more succinct means of instantiating a Set. This method
//       makes use of an initializer rather than the insert method
//       on the Set class.
//
//       As of Swift 2.0, there is no literal syntax for the Set class.

// Instantiate a Set object using an initializer:

//var groceryBag = Set( ["Oranges", "Apples", "Pinapple"] )

// NOTE: The above code is commented out in order to demonstrate
//       another means of instantiating a Set object. Here we will
//       declare the Set explicitly, specifying its type, then use
//       the literal Array syntax.

// Instantite groceryBag Set Explicitly with Array Literal:

var groceryBag: Set = ["Oranges", "Apples", "Pineapple"]

// Loop through groceryBag Set:

print("\nITEMS IN GROCERY BAG:\n")

for food in groceryBag  {
    
    print(food)
    
}   // end for-in

// Use (_:contains) Method to see if "Bananas" exists in groceryBag.

let hasBananas = groceryBag.contains("Bananas")

if !hasBananas {
    
    print("\ngroceryBag does not contain Bananas.\n")
    
}   else    {
    
    print("\ngroceryBag contains Bananas.\n")
    
}   // end if-else


// Using the (_:union) Method to Join Sets Together:

let friendsGroceryBag = Set(["Bananas", "Cereal", "Milk",
                             "Oranges", "Apples", "Pineapple"])

// Join groceryBag with friendsGroceryBag:

let commonGroceryBag = groceryBag.union(friendsGroceryBag)

// Log groceryBag to console.

print("\nITEMS IN GROCERY BAG:")

for food in groceryBag   {
    
    print(food)
    
}   // end for-in

// Log friendsGroceryBag to console.

print("\nITEMS IN FRIENDS GROCERY BAG:")

for food in friendsGroceryBag    {
    
    print(food)
    
}   // end for-in

// Log commonGroceryBag to console.

print("\nITEMS IN COMMON GROCERY BAG:")

for food in commonGroceryBag    {
    
    print(food)
    
}   // end for-in
