
#| Problem One: Sum all multiples of 3 and 5 less than 1000.  |#


;; Almost works but adds common multiples twice. 

(defun tail (base n sum limit)
  (if (< (* base n) limit)
      (tail base (+ n 1) (+ sum (* base n)) limit)
      sum))

;; A more messy attempt ... Currenlty fixing unbound (and) clause. 


#|
 (cond
        (
         <exp> <conseq>
         <default>
        )
|#

(defun twin-recursion (base-one base-two n m limit total)
  (cond (
	 ;; Add both x3 and x5 when x3 is not equal to x5. 
	 (not (= (* base-one n)(* base-two m)))
	 (cond (
		(and (< (* base-one n) limit)(< (* base-two m) limit))
		(twin-recursion base-one base-two (+ n 1) (+ m 1) limit (+ total (* base-one n)(* base-two m)))

		(and (< (* base-one n) limit)(> (* base-two m) limit))
		(twin-recursion base-one base-two (+ n 1) m limit (+ total (* base-one n)))

		(and (> (* base-one n) limit)(< (* base-two m) limit))
		(twin-recursion base-one base-two n (+ m 1) limit (+ total (* base-two m)))

    		(print total)  ;; not working properly 
		))	 
	 ;; When 3n = 3m 
	 (not (> (* base-one n) limit))
	 (twin-recursion base-one base-two (+ n 1) (+ m 1) limit (+ total (* 2 base-one n)))

	 (print total)
	 )
  )
 )
 
;; A Symbolic Approach
;; Hashed Array, prcoess by eliminating via hash.

(defun sol (base-one base-two limit done)
(
 (let
     (
      (list-one (list 1))
      (list-two (list 2))
     )
  (print list-one)
  (print list-two))))
