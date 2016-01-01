(load "UnitTest.lisp")
;;Exercise no 1
(defun palindromep (xlist)
  (equal (reverse xlist) xlist))
(deftest test-palindromep ()
  (check 
   (palindromep '(a b c b a))
   (palindromep '(go spot go))
   (palindromep '((x y z) (e f g) (e f g) (x y z)))
   (not (palindromep '(madam im adam)))
   (palindromep '(x))))
;;Exercise no 2
(setf formula '(sqrt (/ (+ (expt x 2) (expt y 3)) 2.0)))
(defun presentp (x l)
  (cond
    ((null l) nil)
    ((atom (car l)) (if (equal x (car l)) t (presentp x (rest l))))
    ((listp (car l)) (if (presentp x (car l)) t (presentp x (rest l))))))
(deftest test-presentp ()
  (check
   (presentp 'x formula)
   (presentp 'z formula)))
