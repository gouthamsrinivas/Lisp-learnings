
#|
 Procedure to compute fibonacci numbers.
 Not so effective as we end up doing many computations multiple times

 In fact, the number of times the procedure will compute (fib 1) or (fib 0) is  Fib( n+1)
 
 Fib(n+1) grows exponentially with n

|#					

(define (fibo n)
  (cond ((= n 0) 0)
	((= n 1) 1 )
	( else (+ (fib (- n 1))  (fib (- n 2))))))



#|
  Alternate way to do this
|#


(define (compute-fib count a b)
  (cond ((= count 0) 0)
         ((= count 1) b)
         (else (compute-fib (- count 1) 
                              b 
                             (+ a b)))))

(define (fib n)
  (compute-fib n 0 1))

(display (fib 25))


#|
(fib 5)
(compute-fib 5 0 1)
(c-fib 4 1 1)
(c-fib 3 1 2)
(c-fib 2 2 3)
(c-fib 1 3 5)

|#
