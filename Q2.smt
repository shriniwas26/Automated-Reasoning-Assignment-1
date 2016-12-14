(
benchmark Q2.smt
:logic QF_UFLRA
:extrafuns (
	(X1 Real) (Y1 Real)
	(X2 Real) (Y2 Real)
	(X3 Real) (Y3 Real)
	(X4 Real) (Y4 Real)
	(X5 Real) (Y5 Real)
	(X6 Real) (Y6 Real)
	(X7 Real) (Y7 Real)
	(X8 Real) (Y8 Real)
	(X9 Real) (Y9 Real)
	(X10 Real) (Y10 Real)
	(XP1 Real) (YP1 Real)
	(XP2 Real) (YP2 Real)
) 

:formula(
	and
		;all variables greater than zero
		(>= X1 0) (>= Y1 0)
		(>= X2 0) (>= Y2 0)
		(>= X3 0) (>= Y3 0)
		(>= X4 0) (>= Y4 0)
		(>= X5 0) (>= Y5 0)
		(>= X6 0) (>= Y6 0)
		(>= X7 0) (>= Y7 0)
		(>= X8 0) (>= Y8 0)
		(>= X9 0) (>= Y9 0)
		(>= X10 0) (>= Y10 0)
		(>= XP1 0) (>= YP1 0)
		(>= XP2 0) (>= YP2 0)
		; constraints for regular x`
		or( (x1)                     )

	

)

)