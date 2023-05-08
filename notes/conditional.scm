(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(newline)
(display (abs -892))

;;
;; the general form of a conditional expression is
; (cond (<p1> <e1>)
;       (<p2> <e2>)
;       ...
;       (<p3> <e3>)) ; predicate / expression
;   The word predicate is used for procedures that return true or false, as well as for expressions that evaluate to true or false.


;; other way of writing abs procedure
(define (abs x)
  (cond ((< x 0) (- x))
        (else x)))

(newline)
(display (abs -892))


;; Here is yet another way to write the absolute-value procedure:
(define (abs x)
  (if (< x 0)
      (- x)
      x))

(newline)
(display (abs -892))

;; this uses the special form if, a restricted type of conditional
;; that can be used when there are precisely two cases in the
;; case analysis. e general form of an if expression is
;;    (if <predicate> <consequent> <alternative>)