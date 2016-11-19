#lang racket/base

(require
  rackunit
  "../exercises/1-17.rkt")

(check-equal? (mult 10 5) 50)
(check-equal? (mult 1 10) 10)
(check-equal? (mult 5 5) 25)
