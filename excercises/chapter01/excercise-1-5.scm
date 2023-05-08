;; Exercise 1.5: Ben Bitdiddle has invented a test to determine whether
;; the interpreter he is faced with is using applicative- order evaluation
;; or normal-order evaluation. He defines the following two procedures:
(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

;; Then he evaluates the expression
(test 0 (p))
(newline)
(display (test 0 (p)))


;; What behavior will Ben observe with an interpreter that uses applicative-order
;; evaluation? What behavior will he observe with an interpreter that uses
;; normal-order evaluation? Explain your answer. (Assume that the evaluation
;; rule for the special form if is the same whether the in- terpreter is
;; using normal or applicative order: The predicate expression is
;; evaluated first, and the result determines whether to evaluate the
;; consequent or the alternative expression.)

;; applicative-order-evaluation => "evaluate arguments, then apply"
;; (test x y)
;; -> (test 0 (p))
;; ----> (test 0 *recursive call from p to p*), will make a self-reference,
;;                                              program wont halt

;; normal-order evaluation => "fully expand, then reduce"
;; (test x y)
;; -> (test 0 (p))
;; --> (if (= 0 0) 0 (p))   (p) won't be evaluated as it is not used by any expression
;; ---> 0                    program will return 0, as x = 0
