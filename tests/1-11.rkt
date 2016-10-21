#lang racket/base

(require
  rackunit
  "../exercises/1-11.rkt")

(check-equal? (f-recursive 2) 2)
(check-equal? (f-recursive 3) 4)
(check-equal? (f-recursive 4) 11)
(check-equal? (f-recursive 5) 25)

(check-equal? (f-iterative 2) 2)
(check-equal? (f-iterative 3) 4)
(check-equal? (f-iterative 4) 11)
(check-equal? (f-iterative 5) 25)
