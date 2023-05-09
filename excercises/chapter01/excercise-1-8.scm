;; Exercise 1.8: Newton’s method for cube roots is based
;; on the fact that if y is an approximation to the cube 
;; root of x , then a beer approximation is given by the value
;;
;;      x/y^2 + 2y
;;      ----------
;;           3

;; Use this formula to implement a cube-root procedure
;; analogous to the square-root procedure. (In Section 1.3.4
;; we will see how to implement Newton’s method in general
;; as an abstraction of these square-root and cube-root procedures.)
(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x) x)))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (good-enough? guess x)
  (< (abs (- (* guess guess guess) x)) 0.0001))

;; starter of the computation
;; assume square root of any number is 1.0
(define (cbrt x)
  (cbrt-iter 1.0 x))


(newline)
(display (cbrt 8))
(newline)
(newline)
(display (cbrt 27))
(newline)
(newline)
(display (cbrt -64))
(newline)
(newline)
(display (cbrt 1000))
(newline)