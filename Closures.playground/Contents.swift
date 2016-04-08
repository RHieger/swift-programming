//: Playground - Chapter 13 Closures

import Cocoa

// Instantiate an Array to hold counts of volunteers.

var volunteerCounts = [1, 3, 40, 32, 2, 53, 77, 13]

// Sort the array using a custom function.

func sortAscending(i: Int, j: Int) -> Bool  {
    
    return i < j
    
}   // end sortAscending(i: Int, j: Int) -> Bool

// Use the sortAscending(_i:, _) method as the parameter
// of the built-in sort() method of Array.

var sortedVolunteers = volunteerCounts.sort(sortAscending)