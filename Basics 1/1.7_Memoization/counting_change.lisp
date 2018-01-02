#| 
 Number of ways to change amount 'a' using 'n' kinds of coins =

   number of ways to change amount 'a' without using the first kind of coin +
   number of ways to change amount 'a-d' using all n kinds of coins, where 'd' is the denomination of the first coin

   Lets take a= 10  Coins ={2,3,5,6}


   Number of ways to make 10 = 

   Number of ways to make 10 without using the first one (a)   +    number of ways to make  8 ( 10 -2) using all coins (b)


   (a)

    Number of ways to make 10 without using 2 is 1    { 5,5 }
 
 
   (b)

    Number of ways to make 8 using all coins 


    = number of ways to make 8 using all coins except first one (c)  + numbber of ways to make 6 using all coins (d)


   (c)
   
    number of ways to make 8 using all but first coin is 1 { 5,3}                            => Now (b) = 1 + (d)


   (d)

   number of ways to make 6 using all coins
   = number of ways to make 6 using all coins except first one (e) +  number of ways to make (6-2) using all coins (f)


  (e)

  number of ways to make 6 using all but first one is 2

  {3,3} {6}


  (f)

  number of ways to make 4 using all coins is =
 
  number of ways to make 4 without using first coin (g) +  number of ways to make 2  with all the coins (h)
   

 (g) = 0
 (h) = 1 { 2}


So, (f) = 1

   (d) = (e) + (f) = 3 + 1 = 4;

 So, answer = 1 + d = 5;

     

     
|#



#|
 Base conditions :

 (= a 0 ) , we should count it as 1 way to make change  ( empty set )
 (< a 0 ),  we should count it as 0 way to make change
 (= n 0 ),  we should count it as 0 way to make change

|#


(define (count-change amount)
  (cc amount 5))

(define (cc amount kind-of-coins)
  (cond ((= amount 0) 1)
	((or (= amount 1) (= kind-of-coins 0)) 0)
	(else (+  (cc amount (- kind-of-coins 1))
		  (cc (- amount (first-denomination kind-of-coins)) kind-of-coins)))))





(define (first-denomimation kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
	((= kinds-of-coins 2) 5)
	((= kinds-of-coins 3) 10)
	((= kinds-of-coins 4) 25)
	((= kinds-of-coins 5) 50)))
	  



