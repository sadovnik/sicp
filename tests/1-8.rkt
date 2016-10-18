#lang racket/base

(require
  rackunit
  racket/format
  "../exercises/1-8.rkt")

(check-equal? (cube-root 27) 3.0)
(check-equal? (~r (cube-root 0.001) #:precision 3) "0.1")

#| Will hang up on these: |#
#| 10 – too much floating numbers |#
#| 10460353203 – too big #|
