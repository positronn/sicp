
(define (factorial n)
  (if (= n 1)
     1
     (* n (factorial (- n 1)))))

(newline)
(display (factorial 1))
(newline)
(display (factorial 2))
(newline)
(display (factorial 3))
(newline)
(display (factorial 4))
(newline)
(display (factorial 5))
(newline)
