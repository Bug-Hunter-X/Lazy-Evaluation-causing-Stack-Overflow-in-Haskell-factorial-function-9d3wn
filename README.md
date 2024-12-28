# Haskell Factorial Bug
This repository demonstrates a common error in Haskell programming related to lazy evaluation and stack overflow errors in recursive functions. The `factorialBug.hs` file contains a recursive factorial function that suffers from this issue. The `factorialSolution.hs` file provides a corrected version using the `$!` operator to force strict evaluation.

## Problem
The original factorial function uses Haskell's lazy evaluation model, causing recursive calls to pile up on the stack without immediate evaluation. This leads to a stack overflow for larger inputs. 

## Solution
The solution introduces the `$!` operator (strict application) to force immediate evaluation of each recursive call.  This prevents the stack overflow by ensuring that each factorial calculation completes before proceeding to the next.