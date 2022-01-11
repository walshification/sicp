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

; old implementation
; (define (good-enough? guess x)
;   (< (abs (- (square guess) x)) 0.001))

; This version of good-enough? checks if we were to improve the guess, would
; the difference between the old guess and the new one be is less than 0.1% of
; the old guess, and if it is, we call the current guess good enough. This
; relies on the precision of the system that runs it and should be the best
; we can do at any given time in any given system.
(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess))
     (* guess 0.001)))

(define (sqrt x)
  (sqrt-iter 1.0 x))
