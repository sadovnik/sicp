#lang racket/base

#| Excercise 1-19 |#
(provide fib)

(define (double x) (* x x))

(define (halve x) (/ x 2))

(define (fib n)
  (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q count)
  (cond ((= count 0) b)
        ((even? count)
            (fib-iter a
                      b
                      (+ (double q) (double p))
                      (+ (* 2 p q) (double q))
                      (/ count 2)))
        (else (fib-iter (+ (* b q) (* a q) (* a p))
                        (+ (* b p) (* a q))
                        p
                        q
                        (- count 1)))))
