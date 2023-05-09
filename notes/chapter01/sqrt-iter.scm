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
(display (sqrt 10))
(newline)
(display (sqrt (+ (sqrt 2) (sqrt 2))))
(newline)

;;
;; 
;; The sqrt program also illustrates that the simple procedural
;; language we have introduced so far is sufficient for writing
;; any purely numeri- cal program that one could write in, say, C or Pascal. 
;; This might seem surprising, since we have not included in our
;; language any iterative (looping) constructs that direct the computer
;; to do something over and over again. sqrt-iter, on the other hand,
;; demonstrates how iteration can be accomplished using no special construct
;; other than the ordinary ability to call a procedure.
