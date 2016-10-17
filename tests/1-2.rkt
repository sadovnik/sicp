#lang racket/base

(require rackunit "../exercises/1-2.rkt")

(define expected -37/150)

(check-equal? expr expected)
