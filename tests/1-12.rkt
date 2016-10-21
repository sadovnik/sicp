#lang racket/base

(require
  rackunit
  "../exercises/1-12.rkt")

(check-equal? (pascal 1 1) 1)
(check-equal? (pascal 2 1) 1)
(check-equal? (pascal 1000 1) 1)
(check-equal? (pascal 4 2) 3)
(check-equal? (pascal 5 3) 6)
(check-equal? (pascal 5 4) 4)
