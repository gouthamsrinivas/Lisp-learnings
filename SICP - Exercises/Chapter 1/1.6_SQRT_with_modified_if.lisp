
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

(define (isGoodEnough guess x)
  (< (abs (- (square guess) x)) 0.001))


(define (sqrt-iter2 guess x)
  (new-if (isGoodEnough guess x)  ;Using NEW-IF instead of if
      guess
      (sqrt-iter2 (improve guess x) x)))


(define (sqrt-iter guess x)
  (cond ((isGoodEnough guess x) guess ) ; Using cond
        (else (sqrt-iter (improve guess x) x))))


(define (sqrt2 x)
  (sqrt-iter2 1.0 x)) ; The one using NEW-IF

(define (sqrt x)
  (sqrt-iter 1.0 x))


;(display (sqrt2 9)) ; OUTPUT: Causes SIGABORT  because of infinite recursion
(display "\n")
(display (sqrt 15))  ; This works properly
(display "\n")
;(display (sqrt2 900))

  
#|

Reason :

new-if  uses applicative order evaluation. That is, the interpreter first evaluates the operator and operands and then applies the resulting procedure to the resulting arguments.This results in an infinite recursion because the else-clause is always evaluated, thus calling the procedure again ad infinitum.

The if statement is a special form and behaves differently. if first evalutes the predictate, and then evaluates either the consequent (if the predicate evalutes to #t) or the alternative (if the predicate evalues to #f). This is key difference from new-if -- only one of the two consequent expressions get evaluated when using if, while both of the consequent expressions get evaluated with new-if.


|#
