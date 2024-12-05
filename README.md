# Assembly Word Array Summation Bug

This repository demonstrates a common bug in assembly code that involves calculating the sum of elements in a word array. The bug might stem from incorrect array indexing or loop counter management.  The solution provides a corrected version.

## Bug Description

The original assembly code attempts to sum the elements of a word array.  However, it suffers from a potential off-by-one error, or other issues in loop control or indexing. The code might incorrectly access memory outside the bounds of the array, leading to undefined behavior or crashes.  The example provided also lacks proper error checking and input validation which is crucial for robust assembly code.

## Solution

The solution provides a corrected version of the assembly code. The fix ensures accurate loop control and array indexing to prevent memory access issues. Improved error handling or input validation might also be added for better robustness.

## How to Use

1.  Clone the repository.
2.  Assemble the `bug.asm` and `bugSolution.asm` files (using NASM or a similar assembler).
3.  Run the assembled code and observe the results to compare the correct and buggy versions.