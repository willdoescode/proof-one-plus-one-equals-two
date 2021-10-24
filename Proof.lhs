Proof Main Module

> module Main where
> import Prelude hiding ((+), (*))

The Peano Postulates
1. There is a number called 1.
2. Every number has a successor, a natural number that comes after it.
3. The number 1 is not the successor of any natural number.
4. If two natural numbers are different, their successors are different.
5. If we have a set A of natural numbers that contains 1 and also contains...
  the successor of all of its elements, then A is all the natural numbers.

> data Nat = Z | S Nat
>  deriving (Show)

The intuitive notion that each natural number can be obtained by applying 
successor sufficiently often to zero requires an additional axiom, which 
is sometimes called the axiom of induction.

    If K is a set such that:
        0 is in K, and
        for every natural number n, n being in K implies that S(n) is in K,
    then K contains every natural number.

> instance Num Nat where

Definition of addition of natural numbers.

The Peano axioms can be augmented with the operations of 
addition and multiplication and the usual total (linear) ordering on N. 
The respective functions and relations are constructed in set theory or 
second-order logic, and can be shown to be unique using the Peano axioms. 

> a + Z = a
> a + S b = S (a + b)

S Z + S Z = S (S Z) iff 1 + 1 = 2

> main = print $ S Z + S Z
