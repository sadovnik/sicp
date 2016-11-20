#lang racket/base

#| Exercise 1.18 |#
(provide mult)

(define (double x) (+ x x))

(define (halve x) (/ x 2))

(define (mult a b)
  (define (iter a b i)
    (if (even? b)
      (if (= b 0)
        i
        (iter (double a) (halve b) i))
      (iter a (- b 1) (+ i a))))
  (iter a b 0))
