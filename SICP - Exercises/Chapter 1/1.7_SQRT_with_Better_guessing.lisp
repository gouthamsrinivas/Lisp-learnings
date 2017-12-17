
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
	(else else-clause)))

(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))


(define (abs x)
 (if (> x 0) x (- x))) 


(define (improve guess x)
  (average guess (/ x guess)))

(define (isGoodEnough guess prev-guess)
  (< (* ( / (abs (- guess prev-guess)) prev-guess) 100) 0.5)) ; if the change is guess is less than 0.5, then we assume we are good to go

(define (sqrt-iter guess x prev-guess)
  (cond ((isGoodEnough guess prev-guess) guess ) ; Using cond
        (else (sqrt-iter (improve guess x) x guess))))

(define (sqrt x)
  (sqrt-iter 1.0 x 0.5))


(display (sqrt 9)) 
(display "\n")
(display (sqrt 0.000009))  ; 
(display "\n")
(display (sqrt 900))
