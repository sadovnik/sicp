#lang racket/base

(require rackunit "../exercises/1-3.rkt")

(define expected 13)

(check-equal? (sum-of-squares-larger-two 1 2 3) expected)
(check-equal? (sum-of-squares-larger-two 2 1 3) expected)
(check-equal? (sum-of-squares-larger-two 3 2 1) expected)
