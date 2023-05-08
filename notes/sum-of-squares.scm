(define (square x) (* x x))

(define (sum-of-squares x y)
    (+ (square x) (square y)))

(sum-of-squares 3 4)

;; Now we can use sum-of-squares as a building block in constructing
;; further procedures:
(define (f a)
    (sum-of-squares (+ a 1) (* a 2)))

(newline)
(display (f 5))
