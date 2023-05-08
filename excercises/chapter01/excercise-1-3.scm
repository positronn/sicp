;;
;; Exercise 1.3: Define a procedure that takes three numbers
;; as arguments and returns the sum of the squares of the
;; two larger numbers.
;; recycling the procedures used in the textbook:
(define (square x) (* x x))

(define (sum-of-squares x y)
    (+ (square x) (square y)))
  
(define (sum-squares-greatest-two x y z)
  (cond ((and (< x y) (< x z) (sum-of-squares y z)))
        ((and (< y x) (< y z) (sum-of-squares x z)))
        (else (sum-of-squares x y))))

(newline)
(display (sum-squares-greatest-two 2 0 -1))

;;
;; other solution not using previously defined procedures
(define (sum-squares-greatest-two x y z)
  (cond ((and (< x y) (< x z) (+ (* y y) (* z z))))
        ((and (< y x) (< y z) (+ (* x x) (* z z))))
        (else (+ (* x x) (* y y)))))

(newline)
(display (sum-squares-greatest-two 2 0 -1))
