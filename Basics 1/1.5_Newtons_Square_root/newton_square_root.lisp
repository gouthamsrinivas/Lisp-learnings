
(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))


(define (abs x)
 (if (> x 0) x (- x))) 


(define (improve guess x)
  (average guess (/ x guess)))

(define (isGoodEnough guess x)
  (< (abs (- (square guess) x)) 0.001))


(define (sqrt-iter guess x)
  (if (isGoodEnough guess x)
      guess
    (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))


(display (sqrt 9))
(display "\n")
(display (sqrt 15))
(display "\n")
(display (sqrt 900))

  
