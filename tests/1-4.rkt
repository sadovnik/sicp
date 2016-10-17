#lang racket/base

(require rackunit "../exercises/1-4.rkt")

(check-equal? (a-plus-abs-b 1 1) 2)
(check-equal? (a-plus-abs-b 1 0) 1)
(check-equal? (a-plus-abs-b 1 -1) 2)
