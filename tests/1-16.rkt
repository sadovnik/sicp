#lang racket/base

(require
  rackunit
  "../exercises/1-16.rkt")

(check-equal? (expt-iter 2 4) 16)
(check-equal? (expt-iter 1 123) 1)
(check-equal? (expt-iter 5 7) 78125)
(check-equal? (expt-iter 10 5) 100000)
