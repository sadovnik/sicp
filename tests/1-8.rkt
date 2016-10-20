#lang racket/base

(require
  rackunit
  racket/format
  "../exercises/1-8.rkt")

(check-equal? (cube-root 27) 3.0)
(check-equal? (~r (cube-root 0.001) #:precision 8) "0.1")
(check-equal? (~r (cube-root 10) #:precision 8) "2.15443469")
(check-equal? (cube-root 10460353203) 2187.0)
