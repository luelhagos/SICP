; Exercise 1.11: A function f is defined by the rule that
; f (n) =
;       n if n < 3,
;       f (n − 1) + 2f (n − 2) + 3f (n − 3) if n ≥ 3.
; Write a procedure that computes f by means of a recursive
; process. Write a procedure that computes f by means of an iterative process.

; recursive means
(define (fn n)
	(if (< n 3) n
		(+ ( fn (- n 1))
			(* 2 (fn (- n 2)))
				(* 3 (fn (- n 3))))))
; Test it
; (fn 4)
; $1 = 11
; (fn 6)
; $2 = 59

; iterative process
(define (fn n) 
	(define (fn-iter a b c count) 
		(if (= count 0) a 
			(fn-iter b c (+ c (* 2 b) (* 3 a)) (- count 1)))) 
				(fn-iter 0 1 2 n)) 
; Test it
; (fn 4)
; $1 = 11
; (fn 6)
; $2 = 59