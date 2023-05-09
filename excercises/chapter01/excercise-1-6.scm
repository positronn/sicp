;; needed code for the excercise:
(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.0001))

(define (abs x)
  (cond ((< x 0) (- x))
        (else x)))

;; Exercise 1.6: Alyssa P. Hacker doesn’t see why
;; if needs to be provided as a special form. “Why can’t I just
;; define it as an ordinary procedure in terms of cond?” she asks.
;; Alyssa’s friend Eva Lu Ator claims this can indeed be done,
;; and she defines a new version of if:
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

;; Eva demonstrates the program for Alyssa:
;; (new-if (= 2 3) 0 5)
;; 5
;; (new-if (= 1 1) 0 5)
;; 0

;; Delighted, Alyssa uses new-if to rewrite the square-root program:
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))


;; What happens when Alyssa aempts to use this to compute square roots?
;; Explain.
(newline)
(display (sqrt 81))

;; the console output is: `maximum recursion depth exceeded`.
;; as scheme evaluates in `applicative-order-evaluation` (or call by name)
;; all arguments are evaluated first, so the last argument in the new-if combination
;; will always be evaluated, infinitely, independtly of whether the
;; the predicate is true or not. A recursion without bond is executed.

;; with expantion:
;; (define (sqrt-iter guess x) ;; procedure definition
;; -> (sqrt-iter 1 9)          ;; a call to the procedure
;; --> (new-if (good-enough? 1 9) 1 (sqrt-iter (improve 1 9) 9))  ;; expansion of procedure
;; ---> (new-if (< (abs (- (square 1) 9)) 0.0001) 1 (new-if (good-enough? 1 9) 1 (sqrt-iter (improve 1 9) 9))) ;; evaluating arguments, we have to expand sqrt-iter again, and again...
;; unbounded.