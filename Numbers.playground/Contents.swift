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

print(11 / 3)   // 3, because 3 * 3 = 9 (remainder of 1 truncated)

/*************************************************************
 *                                                           *
 * Getting Remainders--the Modulus Operator:                 *
 *                                                           *
 * This code demonstrates how we can get the remainder       *
 * from a division operation. We do this with the modulus    *
 * operator. This operator returns only the remainder, not   *
 * the integer portion of the quotient.                      *
 *                                                           *
 *************************************************************
*/

print(11 % 3)   // 2, because remainder after division is 2

print(-11 % 3)  // -2, because remainder after division is -2

/*************************************************************
 *                                                           *
 * Increment and Decrement Operators:                        *
 *                                                           *
 * The following code demonstrates the increment (++) and    *
 * decrement (--) operators. They increase the value of a    *
 * variable by 1 or decrease its value by 1, respectively.   *
 *                                                           *
 *************************************************************
*/

var x = 10;     // Declare an Int variable.

x++             // Perform postfix incrementation.

// NOTE: Notice that on the line of incrementation, the playground
// displays the value as 10. This is because the incrementation
// does not take place until the next instruction is excuted. The
// x++ syntax, called postfix incrementation, causes this. It is
// also possible to do prefix incrementation, ++x, which would
// increment the value of x immediately.

print("x has been incremented to \(x).")

x--

// NOTE: As noted above, postfix decrementation would execute when
// the next instruction is executed, but prefix decrementation is
// also possible.

print("x has been decremented to \(x).")

/****************************************************************
 *                                                              *
 * Combining Addition and Assignment, += Operator:              *
 *                                                              *
 * This code demonstrates the += operator which is simply       *
 * a shorthand for x = x + y.                                   *
 *                                                              *
 * There are also similar operators for subtraction,            *
 * multiplication, division and modulo operations--             *
 * -=, *=, \= and %=, respectively.                             *
 *                                                              *
 ****************************************************************
*/

x += 10     // Equivalent to x = x + 10

print("x has had 10 added to it and is now \(x).")

/***************************************************************
 *                                                             *
 * Overflowing Data Types:                                     *
 *                                                             *
 * What happens when an operation causes the value of a        *
 * data type, for example Int8, to go beyond the bounds        *
 * of values it can represent?                                 *
 *                                                             *
 * The following code, now commented out, will halt execution  *
 * of this playground with a trap. To see this trap, simply    *
 * uncomment the code.                                         *
 *                                                             *
 ***************************************************************
*/

let y: Int8 = 120

//let z = y + 10

/**************************************************************
 *                                                            *
 * Using Overflow Operators:                                  *
 *                                                            *
 * Swift does provide a means of dealing with overflow on     *
 * data types, known as the overflow operator (e.g. &+).      *
 * This, too produces a somewhat counter-intuitive result,    *
 * but avoides trapping.                                      *
 *                                                            *
 * In short, the overflow operator allows values up to the    *
 * limit and then backtracks through negative values,         *
 * skipping 0, until the calculation is complete.             *
 * For example:                                               *
 *                                                            *
 * 127 &+ 10 = -119                                           *
 *                                                            *
 **************************************************************
*/

let z = y &+ 10

print("120 &+ 10 is \(z).")

/**************************************************************
 *                                                            *
 * Converting Between Integer Types:                          *
 *                                                            *
 * Because Swift is strongly typed, that is, you cannot       *
 * perform mathematical operations with different types,      *
 * calculations involving an addition between type Int8       *
 * and Int16 types will cause a compile time error. The       *
 * solution to this problem, should you need to calculate     *
 * using two different data types, is type casting, or        *
 * converting one data type to another so that both operands  *
 * match in type.                                             *
 *                                                            *
 * The code below first demonstrates the invalid practice,    *
 * commented out, then the correct methodology. Should you    *
 * wish to see the compile-time error, comment out the        *
 * correct code, then uncomment the incorrect code.           *
 *                                                            *
 **************************************************************
*/

let a: Int16 = 200  // Conflicting data type.

let b: Int8 = 50    // Conflicting data type.

//let c = a + b       // Uh-oh!

// NOTE: We can correct the above error by either type casting
//       a to an Int8 type or type casting b to an Int16 type.
//       For this exercise, we will cast b to type Int16.

let c = a + Int16(b)

/**************************************************************
 *                                                            *
 * Declaration of floating-point Number Types:                *
 *                                                            *
 * Swift's type inferrence for a Float literal is Double,     *
 * which is 64 bits allowing for better approximation of      *
 * floating point values than the Float, which is 32 bits.    *
 *                                                            *
 * The code below demonstrates both explicit and implicit     *
 * declaration of these types.                                *
 *                                                            *
 **************************************************************
*/

let d1 = 1.1                // Implicitly Double

let d2: Double = 1.1        // Explicitly Double

let f1: Float = 100.3       // Explicitly Float

/**************************************************************
 *                                                            *
 * Operations on Floating Point Numbers:                      *
 *                                                            *
 * It is possible to perform all the same kinds of            *
 * mathematical operations on Floats that you can on          *
 * the Int data types.                                        *
 *                                                            *
 * The code below demonstrates but three of the allowed       *
 * operations for Float.                                      *
 *                                                            *
 **************************************************************
*/

print(10.0 + 11.4)      // Addition

print(11.0 / 3.0)       // Division

// NOTE: Here is a big difference between Int operations and Float
//       or Double operations. With Int types 11 / 2 would provide
//       only the whole number portion of the quotient, resulting
//       in 11 / 3 = 3. Here, with an inferred type of Double,
//       we have 11 / 3 = 3.66666666666667.

print(12.4 % 5.0)       // Modulus Operation
