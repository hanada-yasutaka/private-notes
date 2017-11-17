
(setq s 0.0)

(dotimes (n (+ (expt 10 8) 1))
  (setq s (+ s (/ (expt -1 n) (+ (* n 2) 1) )    ))
)
(print (* 4 s))
