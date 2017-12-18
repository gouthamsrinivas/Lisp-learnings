(define (+ a b)
  (if (= a 0)
      b
    (inc (+ (dec a) b ))))


#|

 (+ 4 5)
 (inc (+ (dec 4) 5 ))))
 (inc (+ 3 5 )))
 (inc (inc ( + (dec 3) (5))))
 (inc (inc (+ 2 5 )))
 (inc (inc (inc (+ (dec 2) 5))))
 (inc (inc (inc (+ 1 5 ))))
 (inc (inc (inc (inc (+ (dec 1) 5)))))
 (inc (inc (inc (inc (+ 0 5)))))
 (inc (inc (inc (inc 5)))))
 (inc (inc (inc 6)))
 (inc (inc 7))
 (inc 8)
  9


This is linear recursive process as the inc operation keeps on getting deferred
|#


#| Example 2 |#


(define (+a b)
  (if (=a 0)
      b
    (+ (dec a) (inc b))))


#|

 (+ 4 5)
 (+ (dec 4) (inc 5))
 (+ 3 6)
 (+ (dec 3) (inc 6))
 (+ 2 7)
 (+ (dec 2) (inc 7))
 (+ 1 8)
 (+ (dec 1) (inc 8))
 (+ 0 9)
  9
 
  Note that , here there are no deferred operations when the next recursive call happens
  from ( +4 5) it becomes (+ 3 6). The neccessary operations are done and the changed state 
  is passed on to new recursive call. 

  By the time , the next recursive call happens there is no other state left in the stack
  When the base condition is reached, we are done
  (This is not the same in fact(N) when the base condition is reached, we again have to come back to the stack and compute the operations
   The function stack has to store the state outside the procedure )


|#


