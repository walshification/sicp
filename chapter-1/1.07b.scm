; An alternative strategy for implementing good-enough? is to watch how
; guess changes from one iteration to the next and to stop when the change is a
; very small fraction of the guess. Design a square-root procedure that uses this
; kind of end test. Does this work better for small and large numbers?

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))
