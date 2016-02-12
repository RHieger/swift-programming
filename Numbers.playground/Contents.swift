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

/***********************************************************
 *                                                         *
 * Declaring Int Types with Invalid Values:                *
 *                                                         *
 * The following code declares both UInt and Int8 types    *
 * to demonstrate the compile-time error that results.     *
 *                                                         *
 * NOTE: After demonstrating the errors, the offending     *
 *       code was commented out. To see the errors,        *
 *       simply uncomment the code.                        *
 *                                                         *
 ***********************************************************
*/

// Trouble ahead!

//let firstBadValue: UInt = -1    // Unsigned int does not support
                                // negative integers.

//let secondBadValue: Int8 = 200  // Int8 supports values in range
                                // -127 to 128. 200 is too large.

/************************************************************
 *                                                          *
 * Basic Math Operations:                                   *
 *                                                          *
 * The following code demonstrates simple addition,         *
 * subtraction and multiplication.                          *
 *                                                          *
 ************************************************************
*/

print(10 + 20)

print(30 - 5)

print(5 * 6)

/************************************************************
 *                                                          *
 * Precedence and Associativity:                            *
 *                                                          *
 * The order operations are performed are dictated by the   *
 * precedence studied in Algebra. The famous memory scheme  *
 * is PEMDAS (Please Excuse My Dear Aunt Sally), which      *
 * translates to the following order:                       *
 *                                                          *
 * 1. Parenthesis                                           *
 * 2. Exponents                                             *
 * 3. Multiplication                                        *
 * 4. Addition                                              *
 * 5. Subtraction                                           *
 *                                                          *
 ************************************************************
*/

print(10 + 2 * 5)       // 20, because 2 * 5 is evaluated first

print(30 - 5 - 5)       // 20, because 30 -5 is evaluated first


/*************************************************************
 *                                                           *
 * Using Parenthesis to Ease Evaluation of Precedence:       *
 *                                                           *
 * Because anything appearing within parenthesis is          *
 * evaluated first in math operations, you can use them      *
 * to ease the job of specifying precisely the calculation   *
 * you wish to take place.                                   *
 *                                                           *
 *************************************************************
*/

print( (10 + 2) * 5 )       // 60, because (10 + 2) is now evaluated first

print( 30 - (5 - 5) )       // 30, because (5 - 5) is now evaluated first

/*************************************************************
 *                                                           *
 * Surprise Results from Integer Division:                   *
 *                                                           *
 * The following code demonstrates a surprising result       *
 * when one integer is divided by another and there is       *
 * a remainder (i.e., the number cannot be divided by        *
 * the divisor and leave a remainder of 0).                  *
 *                                                           *
 * Rather than producing a floating point number, which      *
 * one might expect, the result is truncating down to        *
 * its integer portion only. This is because the data type   *
 * Int cannot represent floating point numbers.              *
 *                                                           *
 *************************************************************
*/

print(11 / 3)   // 3, because 3 * 3 = 9 (remainder 1 truncated)