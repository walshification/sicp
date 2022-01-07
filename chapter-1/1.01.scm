; Below is a sequence of expressions. What is the result printed by the
; interpreter in response to each expression? Assume that the sequence is to be
; evaluated in the order in which it is presented.

10
;Value: 10

(+ 5 3 4)
;Value: 12

(- 9 1)
;Value: 8

(/ 6 2)
;Value: 3

(+ (* 2 4) (- 4 6))
; (+ 8 -2)
;Value: 6

(define a 3)
;Value: a

(define b (+ a 1))
; (define b 4)
;Value: b

(+ a b (* a b))
; (+ 3 4 (* 3 4))
; (+ 3 4 12)
;Value: 19

(= a b)
;Value: #f

(if (and (> b a) (< b (* a b)))
    b
    a)
; (if (and (> 4 3) (< 4 12))
;     4
;     3)
; (if (and #t #t)
;     4
;     3)
; (if #t 4 3)
;Value: 4

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
; (cond (#f 6)
;       (#t (+ 6 7 3))
;       (else 25))
; (cond (#f 6)
;       (#t 16)
;       (else 25))
;Value: 16

(+ 2 (if (> b a) b a))
; (+ 2 (if (> 4 3) 4 3))
; (+ 2 (if #t 4 3))
; (+ 2 4)
;Value: 6

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))
; (* (cond ((> 3 4) 3)
;          ((< 3 4) 4)
;          (else -1))
;    (+ 3 1))
; (* (cond (#f 3)
;          (#t 4)
;          (else -1))
;    4)
; (* 4 4)
;Value: 16


;1 ]=> (load "chapter-1/1.01.scm")

;Loading "chapter-1/1.01.scm"... done
;Value: 16
