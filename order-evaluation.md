# Order Evaluation

## Applicative vs Normal Order Evaluation

`Applicative Order Evaluation`:  evaluates the operator and operands and then applies the resulting procedure to the resulting arguments. (Evaluate arguments, then apply):

```scheme
(f 5)
(sum-of-squares (+ 5 1) (* 5 2))
(sum-of-squares 6 10)
(+ (square 6) (square 10))
(+ (* 6 6) (* 10 10))
(+ 36 100)
136
```

`Normal Order evaluation`: substitute operand expressions for parameters until obtaining an expression involving only primitive operators, and then perform the evaluation.
(Fully expand, then reduce):

```scheme
(f 5)
(sum-of-squares (+ 5 1) (* 5 2))
(+ (square (+ 5 1)) (square (* 5 2)))
(+ (* (+ 5 1) (+ 5 1)) (* (* 5 2) (* 5 2)))  ;; only primitives
(+ (* 6 6) (* 10 10))
(+ 36 100)
136
```

`Scheme` uses applicative-order evaluation, partly because of the additional efficiency obtained from avoiding multiple evaluations of same expressions.

`Lazy Evaluation` is related to `Normal Order Evaluation`, where arguments are `only` evaluated when they are needed.

Example:

```scheme
(define (p) (p))
(define (test x y)
  (if (= x 0)
      0
      y))
(test 0 (p))
```

The Evaluation would be:
```scheme
(test 0 (p))
(if (= x 0) 0 (p))
0
```
Because the first `predicate` turns out to be `true`
the returned value is `0` _"directly"_, and the second action or value is ignored and not even evaluated.


When doing evaluation we should consider operator precedence and parentheses priorization.
