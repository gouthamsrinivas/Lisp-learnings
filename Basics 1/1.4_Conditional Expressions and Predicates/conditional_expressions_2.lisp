#|

(and <e1> <e2> ....)  ==> returns true if e1,e2,.... evaluates to be true Even if a single evaluation is false , execution stops right there and returns false
(or <e1> <e2> ....)   ==> returns true if any one of the expressions are true
(not el)

and,or  - Special forms .all  the subexpressions need not be evaluated


|#

(define x 7)
(display (and (> x 5) (< x 10)))

(define (>= x y)
  (or (= x y) (> x y)))


 ;another way to write the same

(define (>= x y)
        ( not (< x y)))
