
(define (sqrt x)
  (define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess x) (average guess (/ x guess)))
  (define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))
  (sqrt-iter 1.0 x))


;; Such nesting of definitions, called block structure, is basically the
;; right solution to the simplest name-packaging problem. But there is a
;; better idea lurking here. In addition to internalizing the definitions of
;; the auxiliary procedures, we can simplify them. Since x is bound in the
;; definition of sqrt, the procedures good-enough?, improve, and sqrt-iter,
;; which are defined internally to sqrt, are in the scope of x. Thus, it is not
;; necessary to pass x explicitly to each of these procedures. Instead, we allow
;; x to be a free variable in the internal definitions, as shown be- low.
;; Then x gets its value from the argument with which the enclosing procedure
;; sqrt is called. is discipline is called lexical scoping.

(define (sqrt x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
         guess
         (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))


;; We will use block structure extensively to help us break up large
;; programs into tractable pieces. Thee idea of block structure originated with
;; the programming language Algol 60. It appears in most advanced pro- gramming
;; languages and is an important tool for helping to organize the
;; construction of large programs.
;;