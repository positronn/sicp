(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.0001))

(define (abs x)
  (cond ((< x 0) (- x))
        (else x)))

;; starter of the computation
;; assume square root of any number is 1.0
(define (sqrt x)
  (sqrt-iter 1.0 x))

(newline)
(display (sqrt 81))
(newline)
(display (sqrt 2))
(newline)
(display (sqrt 10 0))
(newline)
(display (sqrt (+ (sqrt 2) (sqrt 2))))
(newline)
