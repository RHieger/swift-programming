//: Playground - Numbers

// Import necessary framework

import Cocoa

// Show the maximum value that can be represented by Int Type.

print("The maximum Int value is \(Int.max).")

// Show the minimum value that can be represented by Int Type.

print("The minimum Int value is \(Int.min).")

// Show the maximum value that can be represented by Int32 Type.

print("The maximum Int32 value is \(Int32.max).")

// Show the minimum value that can be represented by Int32 Type.

print("The minimum Int32 value is \(Int32.min).")

// Show the maximum value that can be represented by the
// Unsigned Int (UInt) Type.

print("The maximum UInt value is \(UInt.max).")

// Show the minimum value that can be represented by the
// Unsigned Int (UInt) Type.

print("The minimum UInt value is \(UInt.min).")

// Show the maximum value that can be represented by the
// Unsigned Int32 (UInt32) Type.

print("The maximum UInt32 value is \(UInt32.max).")

// Show the minimum value that can be represented by the
// Unsigned Int32 (UInt32) Type.

print("The minimum UInt32 value is \(UInt32.min).")

/***********************************************************
 *                                                         *
 * Creating Integer instances implicitly and explicitly:   *
 *                                                         *
 * The following code demonstrates implicit and explict    *
 * declaration of the Int type.                            *
 *                                                         *
 ***********************************************************
*/

let numberOfPages: Int = 10     // Declares the type explicitly.

let numberOfChapters = 3       // Also of type int, but inferred
                               // by the compiler.

/***********************************************************
 *                                                         *
 * Declaring UInt and Int32 Explicitly:                    *
 *                                                         *
 ***********************************************************
*/

let numberOfPeople: UInt = 40

let volumeAdjustment: Int32 = -1000
