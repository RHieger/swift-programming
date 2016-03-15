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
