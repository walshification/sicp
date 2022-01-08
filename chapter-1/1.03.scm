; Define a procedure that takes three numbers as arguments and returns the sum
; of the squares of the two larger numbers.

(define (larger-squared-sum x y z)
  ; add the two largest squares together
  (+ (cond ((and (> x y) (> x z)) (* x x))
           ((and (> y x) (> y z)) (* y y))
           (else (* z z)))
     (cond ((and (> x y) (< x z)) (* x x))
           ((and (< x y) (> x z)) (* x x))
           ((and (> y x) (< y z)) (* y y))
           ((and (< y x) (> y z)) (* y y))
           (else (* z z)))))

(larger-squared-sum 2 3 4)
;Value: 25

(larger-squared-sum 4 3 2)
;Value: 25

(larger-squared-sum 9 5 10)
;Value: 181

(larger-squared-sum 9 10 5)
;Value: 181
