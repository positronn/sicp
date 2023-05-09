(define (square x) (* x x))

;; (define (square    x)            (*     x      x)) 
;; (To      square  something,  multiply   it by itself)

;; the general form of a procedure definition is
;; (define (<name> <formal parameters>)
;;      <body>)

;; We can also use square as a building block in defining other procedures.
(define x 5)
(define y 3)
(+ (square x) (square y))
