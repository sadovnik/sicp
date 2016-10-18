#lang racket/base

(require
  rackunit
  racket/format
  "../exercises/1-7.rkt")

(check-equal? (sqrt 4) 2.0)
(check-equal? (sqrt 9) 3.0)
(check-equal? (~r (sqrt 0.9) #:precision 11) "0.94868329805")
(check-equal? (sqrt 4194304) 2048.0)
