; Translate the following expression into prefix form:
;
; 5 + 4 + (2 - (3 - (6 + 4/5)))
; -----------------------------
;        3(6 - 2)(2 - 7)
;
; -37/150 ~= -0.2466667

(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

; 1 ]=> (load "chapter-1/1.02.scm")

;Loading "chapter-1/1.02.scm"... done
;Value: -37/150
