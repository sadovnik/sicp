#lang racket/base

(provide sqrt)

(define precision 0.00000001)

(define (sqrt-iter current-guess old-guess x)
        (if (good-enough? current-guess old-guess)
            current-guess
            (sqrt-iter (improve current-guess x) current-guess x)))

(define (improve guess x)
        (average guess (/ x guess)))

(define (average x y)
        (/ (+ x y) 2))

(define (good-enough? old-guess new-guess)
        (< (abs (- old-guess new-guess)) precision))

#| The old one |#
#| (define (good-enough? guess x) |#
#|         (< (abs (- (* guess guess) x)) 0.001)) |#

(define (sqrt x)
        (sqrt-iter 1.0 0.0 x))
