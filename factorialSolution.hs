The solution uses the `$!` operator to force the evaluation of the recursive call before it's used:

```haskell
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * (factorial $! (n - 1))
```

The `$!` operator ensures that `factorial (n - 1)` is evaluated before the multiplication happens. This prevents the recursive calls from building up indefinitely on the stack.