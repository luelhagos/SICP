; An example of a procedure using lambda and without lambda

(define (f x y)
	(define (f-helper a b)
		(+ (* x (square a))
			(* y b)
		(* a b)))
	(f-helper (+ 1 (* x y))
(- 1 y)))

; is equivalent to

(define (f x y)
	((lambda (a b)
		(+ (* x (square a))
			(* y b)
		(* a b)))
	(+ 1 (* x y))
(- 1 y)))