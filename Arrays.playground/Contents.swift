//: Playground - Arrays

import Cocoa

// Declare an Array of String objects.

// 1st syntax:

//var bucketList: Array<String>     // Commented out to allow 2nd syntax

// 2nd syntax:

//var bucketList: [String]          // Commented out to allow for 2nd syntax
                                    // plus initialization of Array

// Declare and initialize Array with 2nd Syntax:

//var bucketList: [String] = ["Climb Mt. Everest"]  // Commented out for
                                                    // following demonstration

// Initializing Array with type inference:

var bucketList = ["Climb Mt. Everest"]

// Using (_:append) Method of Array Class:

bucketList.append("Fly hot air balloon to Fiji")

// Append four more Array elements:

bucketList.append("Watch the Lord of the Rings trilogy in one day")

bucketList.append("Go on a walkabout")

bucketList.append("Scuba dive in the Great Blue Hole")

bucketList.append("Find a triple rainbow")

// Remove an item for the Array:

bucketList.removeAtIndex(2)

// Confirm removal of Array element at index 2:

bucketList

// Getting the count of elements in an Array:

print("There are \(bucketList.count) elements in the Array.")

// Using Array subscripting to extract first three items:

print("The top three items are:")

print(bucketList[0...2])

// Use subscripting to append to existing item:

bucketList[2] += " in Australia"

// Log change to console.

print(bucketList[2])

// Replacing an Array item:

// Change Mt. Everest to Mt. Kilimanjaro.

bucketList[0] = "Climb Mt. Kilimanjaro"

// Log altered Array to console.

print(bucketList)

// Now create another bucket list and initialize with a single item,
// but loop through an array of items to populate the rest of the Array:

var bucketList2 = ["Climb Mt. Kilimanjaro"]

// Log new Array to console.

print(bucketList2)

// Initialize an array to hold new items for bucketList2:

var newItems = ["Fly hot air balloon to Fiji",
                "Watch the Lord of the Rings trilogy in one day",
                "Go on a walkabout",
                "Scuba dive in the Great Blue Hole",
                "Find a triple rainbow"]

// Now let's populate the Array bucketList2 with the items
// in the newItems Array.

for item in newItems    {
    
    // Append each item within newItems Array.
    
    bucketList2.append(item)
    
}   // end for-in

// Log fully-populated bucketList2 to console.

print(bucketList2)

// As in bucketList, remove item at index 2

bucketList2.removeAtIndex(2)    // Remove "Watch the Lord of the Rings..."

// Finally, append content to bucketList[2]

bucketList2[2] += " in Australia"

// Log revised bucketList2 to console.

print(bucketList2)

// Refactor the above code for Array bucketList2 by using the
// addition and assignment operator (+=), rather than a loop.

// Declare another bucketList Array.

var bucketList3 = ["Climb Mt. Everest"]

// Log bucketList3 Array to console.

print(bucketList3)

// Use addition and assignment operator to populate Array with
// items in secondary Array, newItems.

bucketList3 += newItems

// Log complete bucketList3 to console.

print(bucketList3)

// Remove item at index 2.

bucketList3.removeAtIndex(2)

// Log revised bucketList3 to console.

print(bucketList3)

// Now append content to content at index 2.

bucketList3[2] += " in Australia"

// Now change content of item at index 0.

bucketList3[0] = "Climb Mt. Kilimanjaro"

// Log completed Array to console.

print(bucketList3)
