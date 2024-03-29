; Exercise 1.17: The exponentiation algorithms in this section are based on performing exponentiation by means of
; repeated multiplication. In a similar way, one can perform
; integer multiplication by means of repeated addition. The
; following multiplication procedure (in which it is assumed
; that our language can only add, not multiply) is analogous to the expt procedure:

(define (* a b)
(if (= b 0) 0
(+ a (* a (- b 1)))))

; This algorithm takes a number of steps that is linear in b.
; Now suppose we include, together with addition, operations double, which doubles an integer, and halve, which
; divides an (even) integer by 2. Using these, design a multiplication procedure analogous to fast-expt that uses a
; logarithmic number of steps.

(define (double x)(* 2 x))  ; doubles a number (multiplies by 2)
(define (halve x)(/ x 2))   ; halves a number (divides by 2)

(define (* a b)
	(cond ((= b 0) 0)
		((even? b) (* (double a) (halve b)))
			(else (+ a (* a (- b 1))))))

; Sample Tests
; (* 8 8)
; $1 = 64
; (* 10 10)
; $2 = 100
; (* 99 120)
; $3 = 11880
