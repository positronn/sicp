;;
;; Exercise 1.4: Observe that our model of evaluation allows for combinations
;; whose operators are compound expressions. Use this observation
;; to describe the behavior of the following procedure:
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(newline)
(display (a-plus-abs-b 4 -1))
;; in the if statement, we are evaluating whether 
;; b is greater than 0, if true, the + operator will be
;; applied to a and b; on the contrary, the operator that will be used is -.
