#lang racket/base

(provide f-recursive f-iterative)

(define (f-recursive n)
  (if (< n 3)
    n
    (+ (f-recursive (- n 1))
       (* 2 (f-recursive (- n 2)))
       (* 3 (f-recursive (- n 3))))))

(define (f-iterative n)
  (define (iter x y z i)
    (if (> i n)
      z
      (iter y
            z
            (+ z (* 2 y) (* 3 x))
            (+ 1 i))))
  (if (< n 3)
    n
    (iter 0 1 2 3)))
