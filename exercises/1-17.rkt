#lang racket/base

#| Exercise 1.17 |#
(provide mult)

(define (double x) (+ x x))

(define (halve x) (/ x 2))

(define (mult a b)
  (cond
    ((= b 1) a)
    ((even? b) (mult (double a) (halve b)))
    (else (+ a (mult a (- b 1))))))
