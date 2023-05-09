;; Exercise 1.9: Each of the following two procedures defines a method
;; for adding two positive integers in terms of the procedures inc,
;; which increments its argument by 1, and dec, which decrements its
;; argument by 1.

(define (+ a b)
  (if (= a 0) b (inc (+ (dec a) b))))

(define (+ a b)
  (if (= a 0) b (+ (dec a) (inc b))))


;; Applicative order evaluation (evaluate arguments, then apply):
;;    The interpreter first evaluates the operator and operands and then applies
;;    the resulting procedure to the resulting arguments.

;; Normal-order evaluation (fully expand, then reduce):
;;    substitute operand expressions for parameters until it obtained an expression
;;    involving only primitive operators, and would then perform the evaluation.

;
; (define (+ a b)
;   (if (= a 0)
;       b
;       (inc (+ (dec a) b))))

; ;; (+ 4 5)
; ;; (inc (+ (dec 4) 5))
; ;; (inc (+ 3 5))
; ;; (inc (inc (+ 2 5)))
; ;; (inc (inc (inc (+ 1 5))))
; ;; (inc (inc (inc (inc (+ 0 5)))))
; ;; (inc (inc (inc (inc 5))))
; ;; (inc (inc (inc 6)))
; ;; (inc (inc 7))
; ;; (inc 8)
; ;; 9

; ;; The first definintion is a recursive process.


; (define (+ a b)
;   (if (= a 0)
;       b
;       (+ (dec a) (inc b))))
; ;; (+ 4 5)
; ;; (+ 3 6)
; ;; (+ 2 7)
; ;; (+ 1 8)
; ;; (+ 0 9)
; ;; 9

; ;; The second definintion is an iterative process.
