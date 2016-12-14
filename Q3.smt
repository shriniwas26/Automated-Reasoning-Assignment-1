(benchmark Q3.smt
:logic QF_UFLIA
:extrafuns(
    ; FINISHING TIMES FOR JOBS
    (j1 Int) (j2 Int) (j3 Int) (j4 Int) (j5 Int) (j6 Int) (j7 Int) (j8 Int) (j9 Int) (j10 Int) (j11 Int) (j12 Int)

    ; STARTING TIMES FOR JOBS
    (sj1 Int) (sj2 Int) (sj3 Int) (sj4 Int) (sj5 Int) (sj6 Int) (sj7 Int) (sj8 Int) (sj9 Int) (sj10 Int) (sj11 Int) (sj12 Int)

    ; RUNNING TIMES FOR JOBS
    (tj1 Int) (tj2 Int) (tj3 Int) (tj4 Int) (tj5 Int) (tj6 Int) (tj7 Int) (tj8 Int) (tj9 Int) (tj10 Int) (tj11 Int) (tj12 Int)
)

:formula (and
    ; DEFINE RUNNING TIMES FOR JOBS
    (= tj1  6) (= tj2  7) (= tj3  8)
    (= tj4  9) (= tj5  10) (= tj6  11) 
    (= tj7  12) (= tj8  13) (= tj9  14) 
    (= tj10 15)(= tj11 16) (= tj12 17)

    ; ALL ENDING TIMES >= 0  
    (>= sj1 0)
    (>= sj2 0)
    (>= sj3 0)
    (>= sj4 0)
    (>= sj5 0)
    (>= sj6 0)
    (>= sj7 0)
    (>= sj8 0)
    (>= sj9 0)
    (>= sj10 0)
    (>= sj11 0)
    (>= sj12 0)

    ; FINISH_TIME(i) = START_TIME(i) + RUNNING_TIME(i)
    (= j1  (+ sj1  tj1))
    (= j2  (+ sj2  tj2))
    (= j3  (+ sj3  tj3))
    (= j4  (+ sj4  tj4))
    (= j5  (+ sj5  tj5))
    (= j6  (+ sj6  tj6))
    (= j7  (+ sj7  tj7))
    (= j8  (+ sj8  tj8))
    (= j9  (+ sj9  tj9))
    (= j10 (+ sj10 tj10))
    (= j11 (+ sj11 tj11))
    (= j12 (+ sj12 tj12))

    ;job 3 will start after jobs 1 and 2 (CORRECT)
    (>= sj3 j1)
    (>= sj3 j2)

    ; Job 5 may only start if jobs 3 and 4 have been finished (CORRECT)
    (>= sj5 j3)
    (>= sj5 j4)

    ; Job 7 may only start if jobs 3, 4 and 6 have been finished. (CORRECT)
    (>= sj7 j3)
    (>= sj7 j4)
    (>= sj7 j6)

    ; Job 8 may not start earlier than job 5 (CORRECT)
    (> sj8 sj5)

    ; Job 9 may only start if jobs 5 and 8 have been finished (CORRECT)
    (>= sj9 j5)
    (>= sj9 j8)

    ; Job 11 may only start if job 10 has been finished (CORRECT)
    (> sj11 sj10)

    ; Job 12 may only start if jobs 9 and 11 have been finished (CORRECT)
    (>= sj12 j9)
    (>= sj12 j11)

    ; Jobs 5,7 en 10 require a special equipment of which only one copy is available, so no two of these jobs may run at the same time.
    (or (>= sj5  j7)  (<= j5 sj7))
    (or (>= sj5  j10) (<= j5 sj10))
    (or (>= sj10 j7)  (<= j10 sj7))

    ; THIS IS TO COMPUTE MINIMAL FINISHING TIME OF ALL JOBS COMBINED
    (<= j12 60) 

    ; EXTRA CONSTRAINTS FOR PART (b)
    ; QUESTION: Do the same with the extra requirement that job 6 and job 12need a resource oflimited availability, by which job 6 may only run during the 17 time units in whichjob 12 is running
    ; (>= sj6 sj12)
    ; (<= j6  j12)

))