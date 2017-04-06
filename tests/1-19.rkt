#lang racket/base

(require
  rackunit
  "../exercises/1-19.rkt")

(check-equal? (fib 0) 0)
(check-equal? (fib 1) 1)
(check-equal? (fib 2) 1)
(check-equal? (fib 3) 2)
(check-equal? (fib 4) 3)
(check-equal? (fib 8) 21)
(check-equal? (fib 13) 233)
(check-equal? (fib 20) 6765)
