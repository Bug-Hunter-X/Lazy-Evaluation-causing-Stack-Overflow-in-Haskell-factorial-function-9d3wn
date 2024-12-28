The following Haskell code attempts to compute the factorial of a number using a recursive function, but it contains a subtle error related to pattern matching and laziness:

```haskell
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)
```

This code will produce a `StackOverflowError` for any input greater than 0.  The reason is that Haskell's lazy evaluation doesn't force the computation of `factorial (n - 1)` until it's actually needed.  Because the `*` operator in `n * factorial (n - 1)` needs both operands, the recursive calls keep building up on the stack until it overflows.