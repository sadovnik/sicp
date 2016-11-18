#lang racket/base

#| Exercise 1.16 |#
(provide expt-iter)

(define (sqr n) (* n n ))

(define (expt-iter b e)
  (define (iter b e a)
    (if (even? e)
        (if (= e 0)
          a
          (iter (sqr b) (/ e 2) a))
        (iter b (- e 1) (* b a))))
  (iter b e 1))
