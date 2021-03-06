(benchmark Q1.smt
:logic QF_UFLIA
:extrafuns ( (t11 Int) (t12 Int) (t13 Int) (t14 Int) (t15 Int) 
(t21 Int) (t22 Int) (t23 Int) (t24 Int) (t25 Int) 
(t31 Int) (t32 Int) (t33 Int) (t34 Int) (t35 Int) 
(t41 Int) (t42 Int) (t43 Int) (t44 Int) (t45 Int) 
(t51 Int) (t52 Int) (t53 Int) (t54 Int) (t55 Int) 
(t61 Int) (t62 Int) (t63 Int) (t64 Int) (t65 Int) 
(t71 Int) (t72 Int) (t73 Int) (t74 Int) (t75 Int) 
(t81 Int) (t82 Int) (t83 Int) (t84 Int) (t85 Int) 
)
:formula (and
	;all variables greater than zero and only two trucks can carry skipples
	(>= t11 0) (>= t12 0) (>= t13 0) (>= t14 0) (>= t15 0) 
	(>= t21 0) (>= t22 0) (>= t23 0) (>= t24 0) (>= t25 0) 
	(>= t31 0) (>= t32 0) (>= t33 0) (>= t34 0) (>= t35 0) 
	(>= t41 0) (>= t42 0) (=  t43 0) (>= t44 0) (>= t45 0) 
	(>= t51 0) (>= t52 0) (=  t53 0) (>= t54 0) (>= t55 0) 
	(>= t61 0) (>= t62 0) (=  t63 0) (>= t64 0) (>= t65 0)
	(>= t71 0) (>= t72 0) (=  t73 0) (>= t74 0) (>= t75 0)
	(>= t81 0) (>= t82 0) (=  t83 0) (>= t84 0) (>= t85 0)

	;capacity of every truck is 8000
	(<= (+ (* 700 t11) (* 400 t12) (* 1000 t13) (* 2500 t14) (* 200 t15)) 8000) 
	(<= (+ (* 700 t21) (* 400 t22) (* 1000 t23) (* 2500 t24) (* 200 t25)) 8000) 
	(<= (+ (* 700 t31) (* 400 t32) (* 1000 t33) (* 2500 t34) (* 200 t35)) 8000) 
	(<= (+ (* 700 t41) (* 400 t42) (* 1000 t43) (* 2500 t44) (* 200 t45)) 8000) 
	(<= (+ (* 700 t51) (* 400 t52) (* 1000 t53) (* 2500 t54) (* 200 t55)) 8000) 
	(<= (+ (* 700 t61) (* 400 t62) (* 1000 t63) (* 2500 t64) (* 200 t65)) 8000) 
	(<= (+ (* 700 t71) (* 400 t72) (* 1000 t73) (* 2500 t74) (* 200 t75)) 8000) 
	(<= (+ (* 700 t81) (* 400 t82) (* 1000 t83) (* 2500 t84) (* 200 t85)) 8000) 

	;each truck can carry at most 8 pallets
	(<= (+ t11 t12 t13 t14 t15) 8) 
	(<= (+ t21 t22 t23 t24 t25) 8) 
	(<= (+ t31 t32 t33 t34 t35) 8) 
	(<= (+ t41 t42 t43 t44 t45) 8) 
	(<= (+ t51 t52 t53 t54 t55) 8) 
	(<= (+ t61 t62 t63 t64 t65) 8) 
	(<= (+ t71 t72 t73 t74 t75) 8) 
	(<= (+ t81 t82 t83 t84 t85) 8) 

	;total number of pallets to be delivered
	(=  (+ t11 t21 t31 t41 t51 t61 t71 t81) 4) 
	(>= (+ t12 t22 t32 t42 t52 t62 t72 t82) 32) 
	(=  (+ t13 t23 t33 t43 t53 t63 t73 t83) 8) 
	(=  (+ t14 t24 t34 t44 t54 t64 t74 t84) 10) 
	(=  (+ t15 t25 t35 t45 t55 t65 t75 t85) 5) 
	
	;prittles and crottles not allowed in same truck
	(or (= t12 0) (= t14 0)) 
	(or (= t22 0) (= t24 0)) 
	(or (= t32 0) (= t34 0)) 
	(or (= t42 0) (= t44 0)) 
	(or (= t52 0) (= t54 0)) 
	(or (= t62 0) (= t64 0))

	;no two pallets of dupples in same truck
	(<= t11 1) 
	(<= t21 1) 
	(<= t31 1) 
	(<= t41 1) 
	(<= t51 1) 
	(<= t61 1) 
	(<= t71 1) 
	(<= t81 1) 
)
)