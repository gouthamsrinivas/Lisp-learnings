(define (square x)  (* x x))
(define (sumOfSquares x y) (+ (square x) (square y)))
(define (f a) (sumOfSquares (+ a 1) (* a 2)))
(display (f 2))  ; displays 25

#| 
 Applicative Order (Evaluate the arguments and then apply)

First evaluate the operands and operator

( f 2) 
(sumOfSquares (+a 1)(*a 2)       
(sumOfSquares (+ 2 1) (* 2 2))   ;evaluate now and then apply to the function
(sumOfSquares 3 4) 
(+ (square 3) (+square 4))
(+ (* 3 3) (* 4 4)
(+ 9 16) ==> 25

--------------------------------------------------------------------------------

 Normal Order  ( Fully expand and then finally reduce) 

( f 2) 
(sumOfSquares (+a 1)(*a 2)        
(sumOfSquares (+ 2 1) (* 2 2))       ;Keep expanding .Dont evaluate till the end
(+ (square (+ 2 1) (+square (* 2 2)) ;Keep expanding .Dont evaluate till the end
(+ (* (+ 2 1) (+ 2 1)) (*  (* 2 2) (* 2 2)))  ; Fully expanded 
(+ (* 3 3) (* 4 4))         ; Also note we have to compute some expressions(2+1) twice in previous line 
(+ 9 16)
25


LISP uses APPLICATIVE ORDER evaluation (one of the advantages is it avoids double computations )

|#
