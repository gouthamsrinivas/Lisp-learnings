#| 

General form of conditional expression is 
((cond (<p1> <e1>)
       (<p2> <e2>)
       ...........))
       
  
 If p1 is true, return el
 else if p2 is true, return e2 

|#

;Absolute(x)

(define (abs x)
  (cond ( (> x 0) x)
        ( (= x 0) 0)
        ( (< x 0) (- x))))



; Another way to write this

(define (abs1 x)
   ( cond ( (< x 0) (- x))
           (else x)))


;yet another way using if clause
; (if (predicate) <Consequence> <Alternative>)

(define (abs2 x)
  (if (< x 0) (- x) x))

(display (abs -5))
(display "\n")
(display (abs1 -5))
(display "\n")
(display (abs2 -5))

